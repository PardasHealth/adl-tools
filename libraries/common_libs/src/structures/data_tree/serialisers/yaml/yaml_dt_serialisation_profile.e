note component:   "openEHR Archetype Project"
	description: "Serialisation profile for YAML syntax"
	keywords:    "YAML, serialisation"
	author:      "Thomas Beale <thomas.beale@oceaninformatics.com>"
	support:     "http://www.openehr.org/issues/browse/AWB"
	copyright:   "Copyright (c) 2011 Ocean Informatics Pty Ltd <http://www.oceaninfomatics.com>"
	license:     "See notice at bottom of class"

	file:        "$URL$"
	revision:    "$LastChangedRevision$"
	last_change: "$LastChangedDate$"

class YAML_DT_SERIALISATION_PROFILE

inherit
	YAML_SERIALISATION_PROFILE

	YAML_SYMBOLS
		export
			{NONE} all
		end

create
	make

feature {NONE} -- Implementation

	symbols: HASH_TABLE [STRING, INTEGER]
			-- keywords in this format, keyed by logical name
		once
			create Result.make(0)
			Result.put ("[", Sym_yaml_sequence_start)
			Result.put ("]", Sym_yaml_sequence_end)
			Result.put ("- ", Sym_yaml_sequence_entry)
			Result.put (",", SYM_YAML_ITEM_DELIMITER)
			Result.put (": ", SYM_YAML_EQ)
		end

	tags: HASH_TABLE[STRING, INTEGER]
			-- keywords in this format, keyed by logical name
		once
			create Result.make(0)
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
--| The Original Code is native_dadl_serialisation_profile.e.
--|
--| The Initial Developer of the Original Code is Thomas Beale.
--| Portions created by the Initial Developer are Copyright (C) 2003-2004
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
