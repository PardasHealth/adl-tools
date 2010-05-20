note
	component:   "openEHR Archetype Project"
	description: "Tests for manipulating archetype codes"
	keywords:    "archetype, ontology, terminology"

	author:      "Peter Gummer"
	support:     "Ocean Informatics <support@OceanInformatics.com>"
	copyright:   "Copyright (c) 2009-2010 Ocean Informatics Pty Ltd"
	license:     "See notice at bottom of class"

	file:        "$URL$"
	revision:    "$LastChangedRevision$"
	last_change: "$LastChangedDate$"
	testing:     "type/manual"

class
	TEST_ARCHETYPE_TERM_CODE_TOOLS

inherit
	OPENEHR_TEST_SET

	ARCHETYPE_TERM_CODE_TOOLS

feature -- Test routines

	test_specialisation_parent_from_code_at_level
			-- A code's specialisation parent may be itself if the given level is the same as the code's specialisation depth.
		note
			testing:  "covers/{ARCHETYPE_TERM_CODE_TOOLS}.specialisation_parent_from_code_at_level"
		do
			assert_equal ("at0000", specialisation_parent_from_code_at_level ("at0000", 0))
			assert_equal ("at0000", specialisation_parent_from_code_at_level ("at0000.1", 0))
			assert_equal ("at0000", specialisation_parent_from_code_at_level ("at0000.0.1", 0))
			assert_equal ("at0000.1", specialisation_parent_from_code_at_level ("at0000.1", 1))
			assert_equal ("at0000.0", specialisation_parent_from_code_at_level ("at0000.0.1", 1))
			assert_equal ("at0", specialisation_parent_from_code_at_level ("at0.1", 0))
			assert_equal ("at0", specialisation_parent_from_code_at_level ("at0.0.1", 0))
			assert_equal ("at0.1", specialisation_parent_from_code_at_level ("at0.1", 1))
			assert_equal ("at0.0", specialisation_parent_from_code_at_level ("at0.0.1", 1))
			assert_equal ("at0.1", specialisation_parent_from_code_at_level ("at0.1.1", 1))
		end

	test_is_refined_code
			-- A code is specialised if there is a non-zero code index before the last index.
		note
			testing:  "covers/{ARCHETYPE_TERM_CODE_TOOLS}.is_refined_code"
		do
			assert_equal (False, is_refined_code ("at0000"))
			assert_equal (False, is_refined_code ("at0001"))
			assert_equal (False, is_refined_code ("at0.1"))
			assert_equal (False, is_refined_code ("at0.0.1"))
			assert_equal (True, is_refined_code ("at0000.1"))
			assert_equal (True, is_refined_code ("at0001.1"))
			assert_equal (True, is_refined_code ("at0000.0.1"))
			assert_equal (True, is_refined_code ("at0.1.1"))
		end

	test_is_valid_code
			-- A code is specialised if there is a non-zero code index before the last index.
		note
			testing:  "covers/{ARCHETYPE_TERM_CODE_TOOLS}.is_valid_code"
		do
			assert_equal (True, is_valid_code ("at0000"))
			assert_equal (True, is_valid_code ("at0001"))
			assert_equal (True, is_valid_code ("at0.1"))
			assert_equal (True, is_valid_code ("at0.0.1"))
			assert_equal (True, is_valid_code ("at0000.1"))
			assert_equal (True, is_valid_code ("at0001.1"))
			assert_equal (True, is_valid_code ("at0000.0.1"))
			assert_equal (True, is_valid_code ("at0.1.1"))
			assert_equal (False, is_valid_code ("at0"))
			assert_equal (False, is_valid_code ("at0.0"))
			assert_equal (False, is_valid_code ("at0.1.0"))
			assert_equal (False, is_valid_code ("at0003.0"))
			assert_equal (False, is_valid_code ("at000.0"))
			assert_equal (True, is_valid_code ("ac0000"))
			assert_equal (True, is_valid_code ("ac0001"))
			assert_equal (True, is_valid_code ("ac0.1"))
			assert_equal (True, is_valid_code ("ac0.0.1"))
			assert_equal (True, is_valid_code ("ac0000.1"))
			assert_equal (True, is_valid_code ("ac0001.1"))
			assert_equal (True, is_valid_code ("ac0000.0.1"))
			assert_equal (True, is_valid_code ("ac0.1.1"))
			assert_equal (False, is_valid_code ("ac0"))
			assert_equal (False, is_valid_code ("ac0.0"))
			assert_equal (False, is_valid_code ("ac0.1.0"))
			assert_equal (False, is_valid_code ("at0003.0"))
			assert_equal (False, is_valid_code ("at0000.0"))
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
--| The Original Code is test_archetype_term_code_tools.e.
--|
--| The Initial Developer of the Original Code is Thomas Beale.
--| Portions created by the Initial Developer are Copyright (C) 2009
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