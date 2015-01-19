note
	component:   "openEHR ADL Tools"
	description: "Descriptor of an authored archetype in the archetype library."
	keywords:    "ADL, archetype"
	author:      "Thomas Beale <thomas.beale@oceaninformatics.com>"
	support:     "http://www.openehr.org/issues/browse/AWB"
	copyright:   "Copyright (c) 2015- Ocean Informatics Pty Ltd <http://www.oceaninfomatics.com>"
	license:     "Apache 2.0 License <http://www.apache.org/licenses/LICENSE-2.0.html>"

class ARCH_LIB_TEMPLATE_OVERLAY

inherit
	ARCH_LIB_ARCHETYPE
		redefine
			file_mgr, differential_archetype
		end

create {ADL_2_ENGINE}
	make

create {ARCHETYPE_LIBRARY, ARCHETYPE_LIBRARY_SOURCE}
	make_new

feature {NONE} -- Initialisation

	make (an_overlay: TEMPLATE_OVERLAY; alt: ARCH_LIB_TEMPLATE)
			-- Create using overlay object created by parting template represented by `alt'
		require
			Valid_id: has_rm_schema_for_archetype_id (an_overlay.archetype_id)
		do
			-- basic state
			id := an_overlay.archetype_id
			create status.make_empty
			create last_modify_timestamp.make_from_epoch (0)
			create last_compile_attempt_timestamp.make_now

			-- archetype state
			parent_ref := an_overlay.parent_archetype_id

			-- create file workflow state
			create file_mgr.make (id, alt.file_mgr)

			reset
			compilation_state := Cs_unread
		ensure
			Id_set: id = an_overlay.archetype_id
			Parent_id_set: parent_ref = an_overlay.parent_archetype_id
			Compilation_state: compilation_state = Cs_unread
		end

	make_new (an_id: ARCHETYPE_HRID; a_parent: ARCHETYPE; alt: ARCH_LIB_TEMPLATE)
			-- Create a new overlay in template represented by `alt'
		require
			Valid_id: has_rm_schema_for_archetype_id (an_id)
			Valid_parent: a_parent.is_differential
		local
			a_diff_arch: attached like differential_archetype
		do
			id := an_id
			create status.make_empty
			create last_modify_timestamp.make_from_epoch (0)
			create last_compile_attempt_timestamp.make_now

			-- archetype state
			create a_diff_arch.make_empty_differential_child (artefact_type, a_parent.specialisation_depth + 1, an_id, a_parent.archetype_id.semantic_id, locale_language_short)
			differential_archetype := a_diff_arch
			parent_ref := a_parent.archetype_id.semantic_id

			-- create file workflow state
			create file_mgr.make (id, alt.file_mgr)

			reset
			compilation_state := Cs_validated
		ensure
			Id_set: id = an_id
			Is_specialised: is_specialised
			Archetype_attached: attached differential_archetype
		end

feature -- Identification

	artefact_type: ARTEFACT_TYPE
		once
			create Result.make_template_overlay
		end

feature -- Artefacts

	differential_archetype: detachable TEMPLATE_OVERLAY

feature -- File Access

	file_mgr: TPL_OVL_PERSISTENCE_MGR

feature -- Editing

	commit
			-- commit modified flat clone to archetype as new differential
		local
			archetype_comparator: ARCHETYPE_COMPARATOR
		do
			-- do something with previous version of archetype

			-- do diff on flat_archetype_clone
			check attached specialisation_parent as parent_aca then
				create archetype_comparator.make_create_differential (parent_aca.flat_archetype, flat_archetype_clone)
			end
--			differential_archetype := archetype_comparator.differential_output

--			differential_archetype.clear_is_generated
--			if attached editor_state as gc then
--				gc.on_commit
--			end
--			create last_modify_timestamp.make_now

			-- regenerate flat form
			flatten (False)

			-- set revision appropriately
		end

end

