note
	component:   "openEHR ADL Tools"
	description: "Persistent form of archetype used for standard serialisations"
	keywords:    "archetype, persistence"
	author:      "Thomas Beale <thomas.beale@oceaninformatics.com>"
	support:     "http://www.openehr.org/issues/browse/AWB"
	copyright:   "Copyright (c) 2011- Ocean Informatics Pty Ltd <http://www.oceaninfomatics.com>"
	license:     "Apache 2.0 License <http://www.apache.org/licenses/LICENSE-2.0.html>"

class P_AUTHORED_ARCHETYPE

inherit
	AUTHORED_RESOURCE

	P_ARCHETYPE
		redefine
			make_dt, make, create_archetype, artefact_type
		end

create
	make, make_dt

feature -- Initialisation

	make_dt (make_args: detachable ARRAY[ANY])
			-- basic make routine to guarantee validity on creation
		do
			create adl_version.make_empty
			create rm_release.make_empty
			create description.default_create
		end

	make (an_archetype: like artefact_type)
		do
			precursor (an_archetype)
			make_from_other (an_archetype)

			adl_version := an_archetype.adl_version
			rm_release := an_archetype.rm_release

			if attached an_archetype.uid as uv then
				uid := uv.value
			end

			other_metadata := an_archetype.other_metadata
		end

feature -- Access

	other_metadata: detachable HASH_TABLE [STRING, STRING]

	adl_version: STRING
			-- ADL version of this archetype

	rm_release: STRING
			-- RM release on which definition of this archetype is based

	uid: detachable STRING

feature -- Factory

	create_archetype: detachable like artefact_type
		local
			o_archetype_id: detachable ARCHETYPE_HRID
			arch_terminology: ARCHETYPE_TERMINOLOGY
			o_uid: detachable HIER_OBJECT_ID
		do
			if attached archetype_id as att_aid
				and attached original_language as o_original_language
				and attached description as o_description
				and attached definition as o_definition
				and attached terminology as p_terminology
			then
				create o_archetype_id.make_from_string (att_aid.physical_id)
				if attached uid as att_uid then
					create o_uid.make_from_string (att_uid)
				end

				create arch_terminology.make_differential (original_language.code_string, o_definition.node_id)
				p_terminology.populate_terminology (arch_terminology)
				arch_terminology.finalise_dt

				create Result.make_all (
					adl_version,
					rm_release,
					o_archetype_id,
					parent_archetype_id,
					is_controlled,
					o_uid,
					other_metadata,
					o_original_language,
					translations,
					o_description,
					o_definition.create_c_complex_object,
					rules,
					arch_terminology,
					annotations
				)

				if is_generated then
					Result.set_is_generated
				end
			end
		end

feature {NONE} -- Implementation

	artefact_type: AUTHORED_ARCHETYPE
		do
			create Result
		end

end

