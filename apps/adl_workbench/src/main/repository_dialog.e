indexing
	description: "Objects that represent an EV_DIALOG.%
		%The original version of this class was generated by EiffelBuild."
	date: "$Date: 2005/01/07 19:38:13 $"
	revision: "$Revision$"

class
	REPOSITORY_DIALOG

inherit
	REPOSITORY_DIALOG_IMP

	EV_STOCK_PIXMAPS
		rename
			implementation as pixmaps_implementation
		export
			{NONE} all
		undefine
			copy, default_create
		end

	SHARED_ARCHETYPE_DIRECTORY
		export
			{NONE} all
		undefine
			copy, default_create
		end

	SHARED_UI_RESOURCES
		export
			{NONE} all
		undefine
			copy, default_create
		end

feature {NONE} -- Initialization

	user_initialization is
			-- Called by `initialize'.
			-- Any custom user initialization that
			-- could not be performed in `initialize',
			-- (due to regeneration of implementation class)
			-- can be added here.
		do
			set_icon_pixmap (adl_workbench_ico)
			repository_dialog_cancel_button.select_actions.extend (agent hide)
			set_default_cancel_button (repository_dialog_cancel_button)
			set_default_push_button (repository_dialog_ok_button)
			show_actions.extend (agent repository_dialog_reference_path_text.set_focus)
			repository_dialog_reference_path_text.focus_in_actions.extend (agent on_select_all (repository_dialog_reference_path_text))
			repository_dialog_work_path_text.focus_in_actions.extend (agent on_select_all (repository_dialog_work_path_text))
			populate_controls
		end

feature -- Access

	main_window: MAIN_WINDOW
			-- main window of app

feature -- Modification

	set_main_window (a_mw: MAIN_WINDOW) is
			-- set main_window
		require
			a_mw /= Void
		do
			main_window := a_mw
		end

feature {NONE} -- Implementation

	populate_controls is
			-- set dialog values from shared settings
		do
			repository_dialog_reference_path_text.set_text (reference_repository_path)
			repository_dialog_work_path_text.set_text (work_repository_path)
		end

	repository_dialog_ok is
			-- Called by `select_actions' of `repository_dialog_ok_button'.
		local
			error_dialog: EV_INFORMATION_DIALOG
			paths_changed, paths_valid: BOOLEAN
			cur_csr: EV_CURSOR
		do
			cur_csr := pointer_style
			paths_valid := True

			if not repository_dialog_reference_path_text.text.is_equal (reference_repository_path) then
				if repository_dialog_reference_path_text.text.is_empty or else
						 archetype_directory.valid_repository_path (repository_dialog_reference_path_text.text) then
					paths_changed := True
					set_reference_repository_path(repository_dialog_reference_path_text.text)
				else
					create error_dialog.make_with_text("invalid reference directory: " +
						repository_dialog_reference_path_text.text +
						" does not exist, or is same as, or is parent or child of another repository path ")
					error_dialog.show_modal_to_window (Current)
					paths_valid := False
				end
			end

			if not repository_dialog_work_path_text.text.is_equal (work_repository_path) then
				if repository_dialog_work_path_text.text.is_empty or else
						archetype_directory.valid_repository_path (repository_dialog_work_path_text.text) then
					set_work_repository_path(repository_dialog_work_path_text.text)
					paths_changed := True
				else
					create error_dialog.make_with_text("invalid work directory: " +
						repository_dialog_work_path_text.text +
						" does not exist, or is same as, or is parent or child of reference repository path")
					error_dialog.show_modal_to_window (Current)
					paths_valid := False
				end
			end
			if paths_changed then
				set_pointer_style(wait_cursor)
				archetype_directory.make
				if not reference_repository_path.is_empty then
					archetype_directory.put_repository (reference_repository_path, "repository")
				end
				if not work_repository_path.is_empty then
					archetype_directory.put_repository (work_repository_path, "work")
				end
				main_window.populate_archetype_directory
				save_resources
				main_window.update_status_area("wrote config file " + Resource_config_file_name + "%N")
				set_pointer_style(cur_csr)
			end
			if paths_valid then
				hide
			end
		end

	get_reference_repository_path is
			-- Called by `select_actions' of `repository_dialog_reference_path_button'.
		do
			repository_dialog_reference_path_text.set_text (get_directory (reference_repository_path, Current))
		end

	get_work_repository_path is
			-- Called by `select_actions' of `repository_dialog_work_path_button'.
		do
			if work_repository_path.is_empty then
				set_work_repository_path (reference_repository_path.twin)
			end

			repository_dialog_work_path_text.set_text (get_directory (work_repository_path, Current))
		end

	on_select_all (text: EV_TEXT_FIELD)
			-- Select all text in `text', if any.
		do
			if text /= Void and then text.text_length > 0 then
				text.select_all
			end
		end

end
