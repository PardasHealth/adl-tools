note
	component:   "openEHR Archetype Project"
	description: "Tests for UUID"
	keywords:    "identifiers"
	author:      "Thomas Beale"
	support:     "Ocean Informatics <support@OceanInformatics.com>"
	copyright:   "Copyright (c) 2013- Ocean Informatics Pty Ltd"
	license:     "See notice at bottom of class"
	testing:     "type/manual"

class
	TEST_UUID

inherit
	OPENEHR_TEST_SET

feature -- Test routines

	test_make
			-- True if code has a valid part at or above specialisation level
		note
			testing:  "covers/{UUID}.make"
		local
			val_uid, uid: UUID
		do
			create val_uid.default_create

			-- proper GUID
			assert_equal (True, val_uid.valid_id ("228F3EC6-43BF-4723-9715-46814985BD2D"))
			create uid.make ("228F3EC6-43BF-4723-9715-46814985BD2D")

			-- broken GUID - non hex char - pos 3 = 'Z'
			assert_equal (False, val_uid.valid_id ("22ZF3EC6-43BF-4723-9715-46814985BD2D"))

			-- broken GUID - trailing delimiter
			assert_equal (False, val_uid.valid_id ("22ZF3EC6-43BF-4723-9715-46814985BD2D-"))

			-- broken GUID - wrong length (1 short at end)
			assert_equal (False, val_uid.valid_id ("22ZF3EC6-43BF-4723-9715-46814985BD2"))

			-- broken GUID - wrong segment lengths for 1st and last segment
			assert_equal (False, val_uid.valid_id ("229F3EC63-43BF-4723-9715-6814985BD2D"))

			-- broken GUID - ISO oid supplied by mistake
			assert_equal (False, val_uid.valid_id ("1.2.3.4"))

			-- broken GUID - junk
			assert_equal (False, val_uid.valid_id ("324rrevc435t43frwefefg"))
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
