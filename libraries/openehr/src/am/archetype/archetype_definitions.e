note
	component:   "openEHR ADL Tools"
	description: "Basic archetype definitions"
	keywords:    "ADL"
	author:      "Thomas Beale"
	support:     "http://www.openehr.org/issues/browse/AWB"
	copyright:   "Copyright (c) 2006-2009 Ocean Informatics Pty Ltd"
	license:     "Apache 2.0 License <http://www.apache.org/licenses/LICENSE-2.0.html>"

class ARCHETYPE_DEFINITIONS

inherit
	BASIC_DEFINITIONS

	OG_DEFINITIONS

feature -- Syntax Elements

	Archetype_any_constraint: STRING = "*"

	Archetype_slot_closed: STRING = "closed"

feature -- Definitions

	Syntax_type_adl: STRING = "adl"
			-- Name of native ADL syntax type.

	Syntax_type_adl_html: STRING = "html"
			-- Name of web publishing syntax type.

	Syntax_type_odin: STRING = "odin"
			-- Name of native ODIN syntax type.

	Syntax_type_xml: STRING = "xml"
			-- Name of XML syntax type.

	Syntax_type_json: STRING = "json"
			-- Name of JSON syntax type.

	Syntax_type_yaml: STRING = "yaml"
			-- Name of YAML syntax type.

	File_ext_archetype_web_page: STRING = ".html"
			-- Extension of web page containing ADL syntax

	File_ext_archetype_adl14: STRING = ".adl"
			-- Extension for legacy flat form archetype files in ADL 1.4 syntax

	File_ext_archetype_flat: STRING = ".adlf"
			-- Extension for legacy flat form archetype files in ADL syntax

	File_ext_archetype_source: STRING = ".adls"
			-- Extension for source form (differential) archetype files in ADL 1.5 syntax

	File_ext_archetype_adl_diff: STRING = ".adlx"
			-- Extension for use with source/flat diff; we don't want to use
			-- the legitimate extension on these files because one is source
			-- and one is flat, and diff tools need to see the same extension;
			-- also we don't want users to get confused about what kind of files
			-- these are

	File_ext_odin: STRING = ".odin"
			-- Default extension for ODIN format files that don't have some other extension

	File_ext_xml_default: STRING = ".xml"
			-- Default extension for XML format archetype files that don't have some other extension

	File_ext_json_default: STRING = ".json"
			-- Default extension for JSON format archetype files that don't have some other extension

	File_ext_yaml_default: STRING = ".yaml"
			-- Default extension for YAML format archetype files that don't have some other extension

	Aom_profile_file_match_regex: STRING
		once
			Result :=  ".*\" + Aom_profile_file_extension + "$"
		end

	Aom_profile_file_extension: STRING = ".arp"

	Default_aom_profile_name: STRING = "unknown"

	Adl_versions: ARRAYED_LIST [STRING]
			-- list of ADL versions known in this tool
		once
			create Result.make(0)
			Result.compare_objects
			Result.extend ("1.4")
			Result.extend ("1.4.1")
			Result.extend ("1.5")
		end

	Latest_adl_version: STRING
			-- return current latest known ADL version in this tool
		once
			Result := Adl_versions.last
		end

	archetype_term_keys: ARRAYED_LIST [STRING]
			-- set of 'key's of an ARCHETYPE_TERM, currently 'text' and 'description'
		once
			Result := (create {ARCHETYPE_TERM}.default_create).Keys
		end

	Archetype_lifecycle_states: ARRAYED_LIST [STRING]
			-- list of archetype authoring lifecycle states
			-- TODO: obtain from openEHR terminology
		once
			create Result.make(0)
			Result.compare_objects
			Result.extend ("Initial")
			Result.extend ("Draft")
			Result.extend ("Review")
			Result.extend ("Approved")
			Result.extend ("Obsolete")
			Result.extend ("Superseded")
		end

	Unknown_value: STRING = "(Unknown)"

	c_object_constraint_types: HASH_TABLE [STRING, STRING]
			-- C_OBJECT meanings keyed by class-names (meanings are message tags to be converted to
			-- natural language via calls to get_text ())
		once
			create Result.make (0)
			Result.put ("c_type_complex_object", "C_COMPLEX_OBJECT")
			Result.put ("c_type_primitive_object", "C_PRIMITIVE_OBJECT")
			Result.put ("c_type_internal_reference", "ARCHETYPE_INTERNAL_REF")
			Result.put ("c_type_external_constraint_reference", "C_CONSTRAINT_REF")
			Result.put ("c_type_archetype_reference", "C_ARCHETYPE_ROOT")
			Result.put ("c_type_slot", "ARCHETYPE_SLOT")
			Result.put ("c_type_quantity", "C_DV_QUANTITY")
			Result.put ("c_type_ordinal", "C_DV_ORDINAL")
			Result.put ("c_type_code_phrase", "C_CODE_PHRASE")
		end

	occurrences_default_list: HASH_TABLE [MULTIPLICITY_INTERVAL, STRING]
		local
			mult_int: MULTIPLICITY_INTERVAL
		once
			create Result.make (0)
			create mult_int.make_optional
			Result.put (mult_int, mult_int.as_string)
			create mult_int.make_mandatory
			Result.put (mult_int, mult_int.as_string)
			create mult_int.make_prohibited
			Result.put (mult_int, mult_int.as_string)
			create mult_int.make_upper_unbounded (0)
			Result.put (mult_int, mult_int.as_string)
			create mult_int.make_upper_unbounded (1)
			Result.put (mult_int, mult_int.as_string)
		end

feature -- Comparison

	valid_adl_version (a_ver: STRING): BOOLEAN
			-- set adl_version with a string containing only '.' and numbers,
			-- not commencing or finishing in '.'
		require
			Valid_string: not a_ver.is_empty
		local
			str: STRING
		do
			str := a_ver.twin
			str.prune_all ('.')
			Result := str.is_integer and a_ver.item(1) /= '.' and a_ver.item (a_ver.count) /= '.'
		end

end


