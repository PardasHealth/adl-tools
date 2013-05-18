note
	component:   "openEHR ADL Tools"
	description: "Types of compilation state of a single compilable artefact."
	keywords:    "ADL"
	author:      "Thomas Beale"
	support:     "http://www.openehr.org/issues/browse/AWB"
	copyright:   "Copyright (c) 2010 Ocean Informatics Pty Ltd"
	license:     "Apache 2.0 License <http://www.apache.org/licenses/LICENSE-2.0.html>"

class COMPILATION_STATES

feature -- Definitions

	Cs_unread: INTEGER = 0
	Cs_lineage_known: INTEGER = 10
	Cs_ready_to_parse: INTEGER = 20
	cs_ready_to_parse_legacy: INTEGER = 21
	Cs_parsed: INTEGER = 22
	Cs_suppliers_known: INTEGER = 30
	Cs_ready_to_validate: INTEGER = 40
	Cs_validated_phase_1: INTEGER = 51
	Cs_validated_phase_2: INTEGER = 52
	Cs_validated: INTEGER = 53
	Cs_invalid: INTEGER = -1
	Cs_rm_class_unknown: INTEGER = -2
	cs_lineage_invalid: INTEGER = -10
	Cs_parse_failed: INTEGER = -20
	Cs_convert_legacy_failed: INTEGER = -21
	cs_suppliers_invalid: INTEGER = -30
	Cs_validate_failed: INTEGER = -40

feature -- Access

	Cs_names: HASH_TABLE [STRING, INTEGER]
			-- version of name suitable for screen display
		once
			create Result.make(0)
			Result.put("Unread", Cs_unread)
			Result.put("Lineage known", Cs_lineage_known)
			Result.put("Ready to parse (legacy .adl archetype)", cs_ready_to_parse_legacy)
			Result.put("Ready to parse", Cs_ready_to_parse)
			Result.put("Suppliers known", Cs_suppliers_known)
			Result.put("Ready to validate", Cs_ready_to_validate)
			Result.put("Validated phase 1", Cs_validated_phase_1)
			Result.put("Validated phase 2", Cs_validated_phase_2)
			Result.put("Validated", Cs_validated)
			Result.put("Invalid", Cs_invalid)
			Result.put("RM class unknown", Cs_rm_class_unknown)
			Result.put("Lineage invalid", Cs_lineage_invalid)
			Result.put("Parse failed", Cs_parse_failed)
			Result.put("Convert legacy .adl failed", Cs_convert_legacy_failed)
			Result.put("Suppliers invalid", cs_suppliers_invalid)
			Result.put("Validate failed", Cs_validate_failed)
		end

	Cs_terminal_states: ARRAYED_LIST [INTEGER]
			-- terminal states from which nothing can be done in current compilation run
			-- (external events e.g. editing the source file can revert the target to another state)
		once
			create Result.make(0)
			Result.extend(Cs_invalid)
			Result.extend(Cs_rm_class_unknown)
			Result.extend(Cs_lineage_invalid)
			Result.extend(Cs_parse_failed)
			Result.extend(Cs_convert_legacy_failed)
			Result.extend(cs_suppliers_invalid)
			Result.extend(Cs_validate_failed)
			Result.extend(Cs_validated)
		end

	Cs_initial_states: ARRAYED_LIST [INTEGER]
			-- states in which an archetype descriptor can be post-creation or editing
		once
			create Result.make(0)
			Result.extend(Cs_lineage_known)
			Result.extend(Cs_rm_class_unknown)
			Result.extend(Cs_ready_to_parse)
			Result.extend(Cs_ready_to_parse_legacy)
			Result.extend(Cs_validated) -- possible due to new in-memory creation
		end

feature -- Status Report

	valid_compilation_state (i: INTEGER): BOOLEAN
			-- True if i is a valid error type
		do
			Result := Cs_names.has(i)
		end

end


