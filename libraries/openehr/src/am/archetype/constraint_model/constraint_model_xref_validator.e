indexing
	component:   "openEHR Archetype Project"
	description: "[
				 Archetype cross-reference table validator. The ARCHEYPE class has a number of
				 xref tables it uses to keep track of the codes in the ontology and where they
				 are used in the archetype definition; these tables are used to test validity,
				 e.g. if a code is mentioned in the definition but not defined in the ontology
				 etc. This object is used in a traversal to populate the xref tables.
		         ]"
	keywords:    "visitor, constraint model"
	author:      "Thomas Beale"
	support:     "Ocean Informatics <support@OceanInformatics.biz>"
	copyright:   "Copyright (c) 2007 Ocean Informatics Pty Ltd"
	license:     "See notice at bottom of class"

	file:        "$URL$"
	revision:    "$LastChangedRevision$"
	last_change: "$LastChangedDate$"

class C_XREF_BUILDER

inherit
	C_VISITOR
		rename
			initialise as initialise_visitor
		end

feature -- Initialisation

	initialise(an_ontology: ARCHETYPE_ONTOLOGY) is
			-- set ontology required for interpreting meaning of object nodes
		require
			Ontology_valid: an_ontology /= Void
		do
			initialise_visitor(an_ontology)
			create node_ids_xref_table.make(0)
			create code_nodes_code_xref_table.make(0)
			create use_node_path_xref_table.make(0)
			create constraint_codes_xref_table.make(0)
		end

feature -- Access

	node_ids_xref_table: HASH_TABLE[ARRAYED_LIST[C_OBJECT], STRING]
			-- table of {list<node>, code} for term codes which identify nodes in archetype (note that there
			-- are other uses of term codes from the ontology, which is why this attribute is not just called
			-- 'term_codes_xref_table')

	constraint_codes_xref_table: HASH_TABLE[ARRAYED_LIST[C_OBJECT], STRING]
			-- table of {list<node>, code} for constraint codes in archetype

	code_nodes_code_xref_table: HASH_TABLE[ARRAYED_LIST[C_OBJECT], STRING]
			-- table of {list<node>, code} for term codes which appear in archetype nodes as data,
			-- e.g. in C_DV_ORDINAL and C_CODE_PHRASE types

	use_node_path_xref_table: HASH_TABLE[ARRAYED_LIST[ARCHETYPE_INTERNAL_REF], STRING]
			-- table of {list<ARCHETYPE_INTERNAL_REF>, target_path}
			-- i.e. <list of use_nodes> keyed by path they point to
			-- FIXME - maybe should move back to ARCHETYPE

feature -- Visitor

	start_c_complex_object(a_node: C_COMPLEX_OBJECT; depth: INTEGER) is
			-- enter an C_COMPLEX_OBJECT
		do
			if a_node.is_addressable then
				if not node_ids_xref_table.has(a_node.node_id) then
					node_ids_xref_table.put(create {ARRAYED_LIST[C_OBJECT]}.make(0), a_node.node_id)
				end
				node_ids_xref_table.item(a_node.node_id).extend(a_node)
			end
		end

	end_c_complex_object(a_node: C_COMPLEX_OBJECT; depth: INTEGER) is
			-- exit an C_COMPLEX_OBJECT
		do
			-- nothing required
		end

	start_archetype_slot(a_node: ARCHETYPE_SLOT; depth: INTEGER) is
			-- enter an ARCHETYPE_SLOT
		do
			if a_node.is_addressable then
				if not node_ids_xref_table.has(a_node.node_id) then
					node_ids_xref_table.put(create {ARRAYED_LIST[C_OBJECT]}.make(0), a_node.node_id)
				end
				node_ids_xref_table.item(a_node.node_id).extend(a_node)
			end
		end

	end_archetype_slot(a_node: ARCHETYPE_SLOT; depth: INTEGER) is
			-- exit an ARCHETYPE_SLOT
		do
			-- nothing required
		end

	start_c_attribute(a_node: C_ATTRIBUTE; depth: INTEGER) is
			-- enter an C_ATTRIBUTE
		do
			-- nothing required
		end

	end_c_attribute(a_node: C_ATTRIBUTE; depth: INTEGER) is
			-- exit an C_ATTRIBUTE
		do
			-- nothing required
		end

	start_archetype_internal_ref(a_node: ARCHETYPE_INTERNAL_REF; depth: INTEGER) is
			-- enter an ARCHETYPE_INTERNAL_REF
		do
			if not use_node_path_xref_table.has(a_node.target_path) then
				use_node_path_xref_table.put(create {ARRAYED_LIST[ARCHETYPE_INTERNAL_REF]}.make(0), a_node.target_path)
			end
			use_node_path_xref_table.item(a_node.target_path).extend(a_node)
		end

	end_archetype_internal_ref(a_node: ARCHETYPE_INTERNAL_REF; depth: INTEGER) is
			-- exit an ARCHETYPE_INTERNAL_REF
		do
			-- nothing required
		end

	start_constraint_ref(a_node: CONSTRAINT_REF; depth: INTEGER) is
			-- enter a CONSTRAINT_REF
		do
			if not constraint_codes_xref_table.has(a_node.target) then
				constraint_codes_xref_table.put(create {ARRAYED_LIST[C_OBJECT]}.make(0), a_node.target)
			end
			constraint_codes_xref_table.item(a_node.target).extend(a_node)
		end

	end_constraint_ref(a_node: CONSTRAINT_REF; depth: INTEGER) is
			-- exit a CONSTRAINT_REF
		do
			-- nothing required
		end

	start_c_primitive_object(a_node: C_PRIMITIVE_OBJECT; depth: INTEGER) is
			-- enter an C_PRIMITIVE_OBJECT
		do
			-- nothing required
		end

	end_c_primitive_object(a_node: C_PRIMITIVE_OBJECT; depth: INTEGER) is
			-- exit an C_PRIMITIVE_OBJECT
		do
			-- nothing required
		end

	start_c_domain_type(a_node: C_DOMAIN_TYPE; depth: INTEGER) is
			-- enter an C_DOMAIN_TYPE
		do
			-- nothing required
		end

	end_c_domain_type(a_node: C_DOMAIN_TYPE; depth: INTEGER) is
			-- exit an C_DOMAIN_TYPE
		do
			-- nothing required
		end

	start_c_code_phrase(a_node: C_CODE_PHRASE; depth: INTEGER) is
			-- enter an C_CODE_PHRASE
		do
			if not a_node.any_allowed and then (a_node.is_local and a_node.code_count > 0) then
				from
					a_node.code_list.start
				until
					a_node.code_list.off
				loop
					if not code_nodes_code_xref_table.has(a_node.code_list.item) then
						code_nodes_code_xref_table.put(create {ARRAYED_LIST[C_OBJECT]}.make(0), a_node.code_list.item)
					end
					code_nodes_code_xref_table.item(a_node.code_list.item).extend(a_node)
					a_node.code_list.forth
				end
			end
		end

	end_c_code_phrase(a_node: C_CODE_PHRASE; depth: INTEGER) is
			-- exit an C_CODE_PHRASE
		do
			-- nothing required
		end

	start_c_ordinal(a_node: C_DV_ORDINAL; depth: INTEGER) is
			-- enter an C_DV_ORDINAL
		do
			if not a_node.any_allowed and then a_node.is_local then
				from
					a_node.items.start
				until
					a_node.items.off
				loop
					if not code_nodes_code_xref_table.has(a_node.items.item.symbol.code_string) then
						code_nodes_code_xref_table.put(create {ARRAYED_LIST[C_OBJECT]}.make(0), a_node.items.item.symbol.code_string)
					end
					code_nodes_code_xref_table.item(a_node.items.item.symbol.code_string).extend(a_node)
					a_node.items.forth
				end
			end
		end

	end_c_ordinal(a_node: C_DV_ORDINAL; depth: INTEGER) is
			-- exit an C_DV_ORDINAL
		do
			-- nothing required
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
--| The Original Code is constraint_model_visitor.e.
--|
--| The Initial Developer of the Original Code is Thomas Beale.
--| Portions created by the Initial Developer are Copyright (C) 2007
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
