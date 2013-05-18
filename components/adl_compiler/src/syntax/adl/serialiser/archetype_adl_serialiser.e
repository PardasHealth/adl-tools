note
	component:   "openEHR ADL Tools"
	description: "parent of all ADL serialisers"
	keywords:    "ADL, serialiser"
	author:      "Thomas Beale <thomas.beale@oceaninformatics.com>"
	support:     "http://www.openehr.org/issues/browse/AWB"
	copyright:   "Copyright (c) 2003- Ocean Informatics Pty Ltd <http://www.oceaninfomatics.com>"
	license:     "Apache 2.0 License <http://www.apache.org/licenses/LICENSE-2.0.html>"

class ARCHETYPE_ADL_SERIALISER

inherit
	ARCHETYPE_MULTIPART_SERIALISER

	ADL_TOKENS
		export
			{NONE} all
		end

	ADL_SYNTAX_CONVERTER
		export
			{NONE} all
		end

create
	make

feature -- Serialisation

	serialise (an_archetype: ARCHETYPE)
		do
		end

	serialise_from_parts (an_archetype: ARCHETYPE;
				lang_serialised, desc_serialised, def_serialised: STRING;
				inv_serialised: STRING; ont_serialised: STRING;
				ann_serialised, comp_onts_serialised: STRING)
		do
			last_result.wipe_out

			archetype := an_archetype

			serialise_initialise
			serialise_archetype_id
			serialise_archetype_specialise
			serialise_archetype_concept

			if not lang_serialised.is_empty then
				last_result.append (apply_style(symbol(SYM_LANGUAGE), STYLE_KEYWORD) + format_item(FMT_NEWLINE))
				last_result.append (lang_serialised)
			end

			if not desc_serialised.is_empty then
				last_result.append (apply_style(symbol(SYM_DESCRIPTION), STYLE_KEYWORD) + format_item(FMT_NEWLINE))
				last_result.append (desc_serialised)
			end

			if not def_serialised.is_empty then
				last_result.append (format_item(FMT_NEWLINE) + apply_style(symbol(SYM_DEFINITION), STYLE_KEYWORD) + format_item(FMT_NEWLINE))
				last_result.append (def_serialised)
			end

			if not inv_serialised.is_empty then
				last_result.append (format_item(FMT_NEWLINE) + apply_style(symbol(SYM_INVARIANT), STYLE_KEYWORD) + format_item(FMT_NEWLINE))
				last_result.append (inv_serialised)
			end

			if not ont_serialised.is_empty then
				last_result.append (format_item(FMT_NEWLINE) + apply_style(symbol(SYM_ONTOLOGY), STYLE_KEYWORD) + format_item(FMT_NEWLINE))
				last_result.append (ont_serialised)
			end

			if not ann_serialised.is_empty then
				last_result.append (format_item(FMT_NEWLINE) + apply_style(symbol(SYM_ANNOTATIONS), STYLE_KEYWORD) + format_item(FMT_NEWLINE))
				last_result.append (ann_serialised)
			end

			if not comp_onts_serialised.is_empty then
				last_result.append (format_item(FMT_NEWLINE) + apply_style(symbol(SYM_COMPONENT_ONTOLOGIES), STYLE_KEYWORD) + format_item(FMT_NEWLINE))
				last_result.append (comp_onts_serialised)
			end

			serialise_finalise
		end

	serialise_initialise
		local
			s: STRING
		do
			last_result.append (format_item(FMT_DOC_START))
			last_result.append (format_item(FMT_DOC_STYLES))

			-- title
			s := format_item (FMT_START_TITLE).twin
			s.replace_substring_all ("$title", archetype.artefact_type.type_name + " " + archetype.archetype_id.as_string)
			s.append (format_item(FMT_END_TITLE))

			-- meta-data
			s := format_item (FMT_META_ITEM).twin
			s.replace_substring_all ("$name", "description")
			s.replace_substring_all ("$content", "Generated by openEHR Archetype Workbench - see " + ADL_help_page_url)
			last_result.append (s)

			last_result.append (format_item (FMT_START_BODY))
		end

	serialise_archetype_id
		local
			arch_kw_str, kw_list: STRING
		do
			arch_kw_str := archetype.artefact_type.type_name.twin
			if archetype.has_adl_version or archetype.is_controlled or archetype.is_generated or attached archetype.uid or attached archetype.other_metadata then
				arch_kw_str.append (" (")
				create kw_list.make_empty

				-- fixed meta-data
				if archetype.has_adl_version then
					if attached {DIFFERENTIAL_ARCHETYPE} archetype then
						kw_list.append (symbol (SYM_ADL_VERSION) + "=" + archetype.adl_version)
					else
						kw_list.append (symbol (SYM_ADL_VERSION) + "=" + adl_version_for_flat_output)
					end
				end
				if archetype.is_controlled then
					if not kw_list.is_empty then
						kw_list.append ("; ")
					end
					kw_list.append (symbol (SYM_IS_CONTROLLED))
				end
				if archetype.is_generated then
					if not kw_list.is_empty then
						kw_list.append ("; ")
					end
					kw_list.append (symbol (SYM_IS_GENERATED))
				end

				-- uid
				if attached archetype.uid as a_uid then
					if not kw_list.is_empty then
						kw_list.append ("; ")
					end
					kw_list.append (symbol (SYM_UID)  + "=" + a_uid.out)
				end

				-- other metadata
				if attached archetype.other_metadata as omd then
					across omd as omd_csr loop
						if not kw_list.is_empty then
							kw_list.append ("; ")
							kw_list.append (omd_csr.key + "=" + omd_csr.item)
						end
					end
				end

				arch_kw_str.append (kw_list)
				arch_kw_str.append_character(')')
			end
			last_result.append (apply_style(arch_kw_str, STYLE_KEYWORD) + format_item(FMT_NEWLINE))

			last_result.append (create_indent(1) + apply_style(archetype.archetype_id.as_string, STYLE_IDENTIFIER) +
				format_item(FMT_NEWLINE))
			last_result.append (format_item(FMT_NEWLINE))
		end

	serialise_archetype_concept
		do
			if adl_version_for_flat_output_numeric < 150 and attached {FLAT_ARCHETYPE} archetype as fa then
				last_result.append (apply_style(symbol(SYM_CONCEPT), STYLE_KEYWORD) + format_item(FMT_NEWLINE))
				last_result.append (create_indent(1) + apply_style("[" + archetype.concept + "]", STYLE_TERM_REF))
				last_result.append (format_item(FMT_NEWLINE))
			end
		end

	serialise_archetype_specialise
		do
			if archetype.is_specialised then
				last_result.append (apply_style(symbol(SYM_SPECIALIZE), STYLE_KEYWORD) + format_item(FMT_NEWLINE))
				last_result.append (create_indent(1) + archetype.parent_archetype_id.as_string + format_item(FMT_NEWLINE))
				last_result.append (format_item(FMT_NEWLINE))
			end
		end

	serialise_finalise
		do
			last_result.append (format_item(FMT_END_BODY))
			last_result.append (format_item(FMT_DOC_END))
		end

end


