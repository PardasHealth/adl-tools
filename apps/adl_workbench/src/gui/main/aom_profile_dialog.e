note
	component:   "openEHR Archetype Project"
	description: "RM schemas dialog window"
	keywords:    "ADL, archeytpes, openEHR"
	author:      "Thomas Beale <thomas.beale@OceanInformatics.com>"
	support:     "http://www.openehr.org/issues/browse/AWB"
	copyright:   "Copyright (c) 2013- Ocean Informatics Pty Ltd <http://www.oceaninfomatics.com>"
	license:     "See notice at bottom of class"

class
	AOM_PROFILE_DIALOG

inherit
	EV_DIALOG
		redefine
			initialize, create_interface_objects, is_in_default_state
		end

	SHARED_APP_UI_RESOURCES
		undefine
			is_equal, default_create, copy
		end

	BMM_DEFINITIONS
		export
			{NONE} all
		undefine
			copy, default_create
		end

	SHARED_AOM_PROFILES_ACCESS
		export
			{NONE} all
		undefine
			copy, default_create
		end

feature -- Definitions

	Grid_profile_col: INTEGER = 1
	Grid_rm_schemas_col: INTEGER = 2
	Grid_terminologies_col: INTEGER = 3
	Grid_validated_col: INTEGER = 4
	Grid_edit_col: INTEGER = 5
	Grid_max_cols: INTEGER
		once
			Result := Grid_edit_col
		end

	Frame_height: INTEGER = 70

	Frame_width: INTEGER = 300

	Grid_expansion_factor: REAL = 1.2

feature {NONE} -- Initialisation

	create_interface_objects
			-- Initialize `Current'.
		do
			create gui_controls.make (0)
			last_populated_aom_profile_dir := aom_profile_directory.twin

			Precursor {EV_DIALOG}

			-- ============ root container ============
			create ev_root_container
			ev_root_container.set_padding (Default_padding_width)
			ev_root_container.set_border_width (Default_border_width)

			-- ============ main grid ============
			create grid.make
			-- grid.enable_tree
			ev_root_container.extend (grid)
			grid.set_minimum_height (Frame_height)
			grid.set_minimum_width (Frame_width)

			-- space cell
			create ev_cell_3
			ev_cell_3.set_minimum_height (10)
			ev_root_container.extend (ev_cell_3)
			ev_root_container.disable_item_expand (ev_cell_3)

			-- ============ AOM profile directory setter ============
			create dir_setter.make (get_text ("aom_profile_dir_text"), agent :STRING do Result := aom_profile_directory end, 0, 0)
			dir_setter.set_post_select_agent (agent on_set_aom_profile_dir)
			ev_root_container.extend (dir_setter.ev_root_container)
			ev_root_container.disable_item_expand (dir_setter.ev_root_container)
			gui_controls.extend (dir_setter)

			-- ============ Ok/Cancel buttons ============
			create ok_cancel_buttons.make (agent on_ok, agent on_cancel)
			ev_root_container.extend (ok_cancel_buttons.ev_root_container)
			ev_root_container.disable_item_expand (ok_cancel_buttons.ev_root_container)
		end

	initialize
		do
			precursor
			extend (ev_root_container)
			set_title (get_text ("aom_profile_dialog_title"))
			set_icon_pixmap (adl_workbench_logo)
			set_minimum_width (Frame_width + 40)

			set_default_cancel_button (ok_cancel_buttons.cancel_button)
			set_default_push_button (ok_cancel_buttons.ok_button)

			-- Connect events.
			show_actions.extend (agent grid.set_focus)

			enable_edit
			do_populate
			ev_root_container.refresh_now
		end

feature -- Access

	ev_root_container: EV_VERTICAL_BOX

feature -- Status

	has_changed_profile_dir: BOOLEAN
			-- AOM profile directory has changed; should refresh

feature -- Commands

	enable_edit
			-- enable editing
		do
			gui_controls.do_all (agent (an_item: EVX_DATA_CONTROL) do an_item.enable_editable end)
		end

feature -- Events

	on_ok
			-- Set shared settings from the dialog widgets.
		local
			i: INTEGER
			error_dialog: EV_INFORMATION_DIALOG
		do
			-- we do this call again, even though it might have alredy been executed due to the user using the
			-- directory browse button (multiple times). We do it here because the user might have also set the
			-- directory by directly typing in the directory text box (in which case there is no other event to
			-- link this call to)
			on_set_aom_profile_dir

			-- case where the directory no longer exists or is readable
			if not directory_exists (last_populated_aom_profile_dir) then
				create error_dialog.make_with_text (get_msg ("aom_profile_dir_not_valid", <<last_populated_aom_profile_dir>>))
				error_dialog.show_modal_to_window (Current)
			else
				hide
				if not last_populated_aom_profile_dir.same_string (aom_profile_directory) and directory_exists (last_populated_aom_profile_dir) then
					set_aom_profile_directory (last_populated_aom_profile_dir)
					has_changed_profile_dir := True
				end
			end
		end

	on_cancel
			-- Set shared settings from the dialog widgets.
		local
			error_dialog: EV_INFORMATION_DIALOG
		do
			if not directory_exists (last_populated_aom_profile_dir) then
				create error_dialog.make_with_text (get_msg ("aom_profile_dir_not_valid", <<last_populated_aom_profile_dir>>))
				error_dialog.show_modal_to_window (Current)
			else
				hide
			end
		end

	on_set_aom_profile_dir
			-- Let the user browse for the directory where AOM profiles are found.
			-- if a change is made, reload profiles immediately, then repopulate this dialog
		local
			error_dialog: EV_INFORMATION_DIALOG
			new_dir: STRING
		do
			new_dir := dir_setter.data_control_text
			if not new_dir.same_string (last_populated_aom_profile_dir) and directory_exists (new_dir) then
				ok_cancel_buttons.disable_sensitive
				aom_profiles.initialise (new_dir)
				if not aom_profiles.found_valid_profiles then
					create error_dialog.make_with_text (get_msg ("aom_profile_dir_contains_no_valid_profiles", <<new_dir>>))
					error_dialog.show_modal_to_window (Current)
				end
				populate_grid
				ok_cancel_buttons.enable_sensitive
				last_populated_aom_profile_dir := new_dir
			end
		end

	last_populated_aom_profile_dir: STRING

feature {NONE} -- Implementation

	do_populate
			-- Set the dialog widgets from shared settings.
		do
			gui_controls.do_all (agent (an_item: EVX_DATA_CONTROL) do an_item.populate end)
			populate_grid
		end

	populate_grid
			-- Set the grid from shared settings.
		local
			i: INTEGER
			form_width: INTEGER
			gli: EV_GRID_LABEL_ITEM
			gci: EV_GRID_COMBO_ITEM
			row: EV_GRID_ROW
			aom_profile: AOM_PROFILE
			prf_name: STRING
			rm_schemas_list, terminologies: ARRAYED_LIST [STRING]
		do
			-- get rid of previously defined rows
			grid.wipe_out
			grid.enable_column_resize_immediate
			grid.set_minimum_height ((aom_profiles.profile_descriptor_candidates.count + 1) * grid.row_height + grid.header.height)

			-- create row containinng widgets for each profile
			across aom_profiles.profile_descriptor_candidates as profs_csr loop
				create terminologies.make (0)
				if attached profs_csr.item.profile as prf then
					aom_profile := prf
					prf_name := aom_profile.profile_name
					rm_schemas_list := aom_profile.rm_schemas
					if attached aom_profile.terminology_profile as tpf then
						if attached tpf.terminology_issuer as iss then
							terminologies.extend (iss)
						end
						if attached tpf.code_sets_issuer as iss then
							terminologies.extend (iss)
						end
					end
				else
					prf_name := "unknown"
					create rm_schemas_list.make (0)
				end

				-- column 1 - profile name
				create gli.make_with_text (prf_name)
				grid.set_item (Grid_profile_col, grid.row_count + 1, gli)
				row := gli.row

				-- column 2 - matched Reference Models list
				create gci
				row.set_item (Grid_rm_schemas_col, gci)
				gci.activate
				gci.set_item_strings (rm_schemas_list)

				-- column 3 - matched Terminologies list
				create gci
				row.set_item (Grid_terminologies_col, gci)
				gci.activate
				gci.set_item_strings (terminologies)

				-- column 4 - validated
				create gli.make_with_text ("         ")
				if profs_csr.item.passed and not profs_csr.item.has_warnings then
					gli.set_pixmap (get_icon_pixmap ("tool/star"))
				else
					if profs_csr.item.has_errors then
						gli.set_pixmap (get_icon_pixmap ("tool/errors"))
					else
						gli.set_pixmap (get_icon_pixmap ("tool/info"))
					end
					gli.select_actions.extend (agent show_profile_validation (profs_csr.item))
				end
				row.set_item (Grid_validated_col, gli)

				-- column 5 - create edit button and add to row
				create gli.make_with_text ("Edit")
				gli.set_pixmap (get_icon_pixmap ("tool/edit"))
				gli.select_actions.extend (agent do_edit_profile (profs_csr.item))
				row.set_item (Grid_edit_col, gli)
			end

			-- make the column content visible
			if grid.row_count > 0 then
				-- set grid column titles
				grid.column (Grid_profile_col).set_title (get_text ("aom_profile_grid_profile_col_title"))
				grid.column (Grid_rm_schemas_col).set_title (get_text ("aom_profile_grid_rm_col_title"))
				grid.column (Grid_terminologies_col).set_title (get_text ("aom_profile_grid_term_col_title"))
				grid.column (Grid_validated_col).set_title (get_text ("aom_profile_grid_validated_col_title"))
				grid.column (Grid_edit_col).set_title (get_text ("aom_profile_grid_edit_col_title"))

				grid.resize_columns_to_content (Grid_expansion_factor)
				from i := 1 until i > grid.column_count loop
					form_width := form_width + grid.column (i).width
					i := i + 1
				end
			end

			set_width (form_width + Default_padding_width * (grid.column_count + 1) + Default_border_width * 2)
		end

	do_edit_profile (a_profile_desc: AOM_PROFILE_DESCRIPTOR)
			-- launch external editor with schema, or info box if none defined
		do
			execution_environment.launch (text_editor_command + " %"" + a_profile_desc.profile_path + "%"")
		end

	show_profile_validation (a_profile_desc: AOM_PROFILE_DESCRIPTOR)
			-- display info dialog with validity report
		local
			info_dialog: EV_INFORMATION_DIALOG
		do
			create info_dialog.make_with_text (a_profile_desc.error_strings)
			info_dialog.show_modal_to_window (Current)
		end

	ev_cell_3: EV_CELL

	grid: EV_GRID_KBD_MOUSE

	gui_controls: ARRAYED_LIST [EVX_DATA_CONTROL]

	dir_setter: EVX_DIRECTORY_SETTER

	ok_cancel_buttons: EVX_OK_CANCEL_CONTROLS

	is_in_default_state: BOOLEAN
			-- Is `Current' in its default state?
		do
			Result := True
		end

end


--|
--| ***** BEGIN LICENSE BLOCK *****
--| Version: MPL 1.1/GPL 2.0/LGPL 2.1
--|
--| The contents of this file are subject to the Mozilla Public License Version
--| 1.1 (the 'License'); you may not use this file except in compliance with
--| the License. You may obtain a copy of the License at
--| http://www.mozilla.org/MPL/
--|
--| Software distributed under the License is distributed on an 'AS IS' basis,
--| WITHOUT WARRANTY OF ANY KIND, either express or implied. See the License
--| for the specific language governing rights and limitations under the
--| License.
--|
--| The Original Code is rm_schema_dialog.e.
--|
--| The Initial Developer of the Original Code is Thomas Beale.
--| Portions created by the Initial Developer are Copyright (C) 2010
--| the Initial Developer. All Rights Reserved.
--|
--| Contributor(s):
--|
--| Alternatively, the contents of this file may be used under the terms of
--| either the GNU General Public License Version 2 or later (the 'GPL'), or
--| the GNU Lesser General Public License Version 2.1 or later (the 'LGPL'),
--| in which case the provisions of the GPL or the LGPL are applicable instead
--| of those above. If you wish to allow use of your version of this file only
--| under the terms of either the GPL or the LGPL, and not to allow others to
--| use your version of this file under the terms of the MPL, indicate your
--| decision by deleting the provisions above and replace them with the notice
--| and other provisions required by the GPL or the LGPL. If you do not delete
--| the provisions above, a recipient may use your version of this file under
--| the terms of any one of the MPL, the GPL or the LGPL.
--|
--| ***** END LICENSE BLOCK *****
--|
