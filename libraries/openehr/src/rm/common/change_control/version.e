indexing
	component:   "openEHR Common Information Model"

	description: "[
			 Versionable objects.
			 ]"
	keywords:    "version"

	author:      "Thomas Beale"
	support:     "Ocean Informatics <support@OceanInformatics.biz>"
	copyright:   "Copyright (c) 2000-2004 The openEHR Foundation <http://www.openEHR.org>"
	license:     "See notice at bottom of class"

	file:        "$URL$"
	revision:    "$LastChangedRevision$"
	last_change: "$LastChangedDate$"

deferred class VERSION [G]

inherit
	EXTERNAL_ENVIRONMENT_ACCESS
		export
			{NONE} all
		end

feature -- Access

	uid: OBJECT_VERSION_ID is
			-- Unique identifier of this version, containing owner_id, version_tree_id and 
			-- creating_system_id.
		deferred
		end

	preceding_version_uid: OBJECT_VERSION_ID is
			-- Unique identifier of the version of which this version is a modification; 
			-- Void if this is the first version.
		deferred
		end
	
	commit_audit: AUDIT_DETAILS
			-- Audit trail corresponding to the committal of this version to the 
			-- VERSION_REPOSITORY where it was first created..

	contribution: OBJECT_REF
			-- Contribution in which this version was added.

	owner_id: HIER_OBJECT_ID is
			-- Unique identifier of the owning VERSIONED_OBJECT.
		do
		end
		
	data: G is
			-- content of this Version
		deferred
		end

feature -- Status Report

	is_branch: BOOLEAN is
			-- True if this Version represents a branch.
		do
		end

invariant
	Uid_valid: uid /= Void
	Owner_id_valid: owner_id /= Void and then owner_id.value.is_equal(uid.object_id.value)
	Commit_audit_valid: commit_audit /= Void
	Contribution_valid: contribution /= Void
	Preceding_version_uid_validity: uid.version_tree_id.is_first xor preceding_version_uid /= Void
	Data_valid: data /= Void	
	
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
--| The Original Code is versionable.e.
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
