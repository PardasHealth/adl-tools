note
	component:   "openEHR ADL Tools"
	description: "[
			 UML TypedElement abstraction, as defined in OMG UML 2.0 Infrastructure 
			 Specification 2003-09-15.
			 ]"
	keywords:    "UML, introspection, reflection"
	author:      "Thomas Beale"
	support:     "Ocean Informatics <support@OceanInformatics.biz>"
	copyright:   "Copyright (c) 2004 Ocean Informatics Pty Ltd"
	license:     "Apache 2.0 License <http://www.apache.org/licenses/LICENSE-2.0.html>"


deferred class UML_REDEFINABLE_ELEMENT

inherit
	UML_NAMED_ELEMENT
	
feature -- Access

	redefined_element: LINKED_SET [UML_REDEFINABLE_ELEMENT]
			-- 
		do
			
		end
		
feature -- Status Report

	is_leaf: BOOLEAN
	
invariant

end


