note
	description: "Icon loader class generated by icondbc"
	keywords:    "Embedded icons"
	author:      "Thomas Beale <thomas.beale@oceaninformatics.com>"
	support:     "http://www.openehr.org/issues/browse/AWB"
	copyright:   "Copyright (c) 2013- Ocean Informatics Pty Ltd"
	license:     "Apache 2.0 License <http://www.apache.org/licenses/LICENSE-2.0.html>"

class ICON_RM_GENERIC_CLASS_CONCRETE_SUPERTYPE_OVERRIDE

inherit
	ICON_SOURCE

create
	make

feature {NONE} -- Initialization

	make
			-- Initialization
		do
			key := "rm/generic/class_concrete_supertype_override"
			make_with_size (16, 16)
			fill_memory
		end

feature {NONE} -- Image data
	
	c_colors_0 (a_ptr: POINTER; a_offset: INTEGER)
			-- Fill `a_ptr' with colors data from `a_offset'.
		external
			"C inline"
		alias
			"{
				{
					#define B(q) #q
					#ifdef EIF_WINDOWS
						#define A(a,r,g,b) B(\x##b\x##g\x##r\x##a)
					#else
						#define A(a,r,g,b) B(\x##r\x##g\x##b\x##a)
					#endif

					char l_data[] =
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(FF,D5,05,05) A(FF,DC,00,00) A(FF,DE,00,00) A(FF,E2,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(FF,BD,13,13) A(FF,C7,0D,0D) 
					A(FF,CB,09,09) A(FF,D5,05,05) A(FF,D9,01,01) A(FF,DE,00,00) A(FF,E0,00,00) A(FF,E2,00,00) A(FF,EE,00,00) A(FF,F8,08,08) A(FF,F2,18,18) A(FF,EB,31,31) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(FF,BD,13,13) A(FF,C3,0F,0F) A(FF,CB,09,09) A(FF,D2,06,06) A(FF,D9,01,01) A(FF,DC,00,00) A(FF,E0,00,00) 
					A(FF,E2,00,00) A(FF,EE,00,00) A(FF,F6,00,00) A(FF,F2,18,18) A(FF,EE,24,24) A(FF,EE,38,38) A(FF,F0,3E,3E) A(00,00,00,00) A(FF,B9,15,15) A(FF,C3,0F,0F) 
					A(FF,C7,0D,0D) A(FF,D2,06,06) A(FF,D5,05,05) A(FF,DC,00,00) A(FF,DE,00,00) A(FF,E2,00,00) A(FF,E2,00,00) A(FF,F6,00,00) A(FF,F8,08,08) A(FF,EE,24,24) 
					A(FF,EB,31,31) A(FF,F0,3E,3E) A(FF,F2,46,46) A(FF,F6,56,56) A(FF,BD,13,13) A(FF,C7,0D,0D) A(FF,CB,09,09) A(FF,D5,05,05) A(FF,D9,01,01) A(FF,DE,00,00) 
					A(FF,E0,00,00) A(FF,E2,00,00) A(FF,EE,00,00) A(FF,F8,08,08) A(FF,F2,18,18) A(FF,EB,31,31) A(FF,EE,38,38) A(FF,F2,46,46) A(FF,F3,4F,4F) A(FF,F8,5E,5E) 
					A(FF,C3,0F,0F) A(FF,CB,09,09) A(FF,D2,06,06) A(FF,D9,01,01) A(FF,DC,00,00) A(FF,E0,00,00) A(FF,E2,00,00) A(FF,EE,00,00) A(FF,F6,00,00) A(FF,F2,18,18) 
					A(FF,EE,24,24) A(FF,EE,38,38) A(FF,F0,3E,3E) A(FF,F3,4F,4F) A(FF,F6,56,56) A(FF,FA,64,64) A(FF,C7,0D,0D) A(FF,D2,06,06) A(FF,D5,05,05) A(FF,DC,00,00) 
					A(FF,DE,00,00) A(FF,E2,00,00) A(FF,E2,00,00) A(FF,F6,00,00) A(FF,F8,08,08) A(FF,EE,24,24) A(FF,EB,31,31) A(FF,F0,3E,3E) A(FF,F2,46,46) A(FF,F6,56,56) 
					A(FF,F8,5E,5E) A(FF,FB,6D,6D) A(00,00,00,00) A(FF,D5,05,05) A(FF,D9,01,01) A(FF,DE,00,00) A(FF,E0,00,00) A(FF,E2,00,00) A(FF,EE,00,00) A(FF,F8,08,08) 
					A(FF,F2,18,18) A(FF,EB,31,31) A(FF,EE,38,38) A(FF,F2,46,46) A(FF,F3,4F,4F) A(FF,F8,5E,5E) A(FF,FA,64,64) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(FF,DC,00,00) A(FF,E0,00,00) A(FF,E2,00,00) A(FF,EE,00,00) A(FF,F6,00,00) A(FF,F2,18,18) A(FF,EE,24,24) A(FF,EE,38,38) A(FF,F0,3E,3E) A(FF,F3,4F,4F) 
					A(FF,F6,56,56) A(FF,FA,64,64) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(FF,F8,08,08) A(FF,EE,24,24) A(FF,EB,31,31) A(FF,F0,3E,3E) A(FF,F2,46,46) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(FF,00,00,00) A(FF,C0,C0,C0) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(FF,00,00,00) A(FF,80,80,80) A(FF,00,00,00) A(FF,C0,C0,C0) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(FF,00,00,00) A(FF,80,80,80) 
					A(00,00,00,00) A(00,00,00,00) A(FF,00,00,00) A(FF,C0,C0,C0) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(FF,00,00,00) A(FF,00,00,00) A(FF,00,00,00) A(FF,00,00,00) A(FF,00,00,00) A(FF,00,00,00) A(FF,00,00,00) 
					A(FF,C0,C0,C0) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(FF,00,00,00) A(FF,C0,C0,C0) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(FF,00,00,00) A(FF,C0,C0,C0) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) ;
					memcpy ((EIF_NATURAL_32 *)$a_ptr + $a_offset, &l_data, sizeof l_data - 1);
				}
			}"
		end

	build_colors (a_ptr: POINTER)
			-- Build `colors'
		do
			c_colors_0 (a_ptr, 0)
		end

end