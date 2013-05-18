note
	description: "Icon loader class generated by icondbc"
	keywords:    "Embedded icons"
	author:      "Thomas Beale <thomas.beale@oceaninformatics.com>"
	support:     "http://www.openehr.org/issues/browse/AWB"
	copyright:   "Copyright (c) 2013- Ocean Informatics Pty Ltd"
	license:     "Apache 2.0 License <http://www.apache.org/licenses/LICENSE-2.0.html>"

class ICON_TOOL_COMPILE

inherit
	ICON_SOURCE

create
	make

feature {NONE} -- Initialization

	make
			-- Initialization
		do
			key := "tool/compile"
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
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(FF,19,D8,4C) A(FF,1F,DE,52) A(FF,23,E2,56) A(FF,24,E3,57) A(FF,24,E3,57) A(FF,22,E1,55) 
					A(FF,1D,DC,50) A(FF,17,D6,4A) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(FF,1F,DE,52) 
					A(FF,1C,DB,4F) A(FF,00,B1,24) A(FF,00,8E,00) A(FF,00,8B,00) A(FF,00,94,08) A(FF,00,A3,17) A(FF,04,C3,37) A(FF,1C,DB,4F) A(FF,17,D6,4A) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(FF,21,E0,54) A(FF,06,C5,39) A(FF,00,6F,00) A(FF,00,72,00) A(FF,00,88,00) A(FF,00,8F,03) 
					A(FF,00,8C,00) A(FF,00,84,00) A(FF,00,7D,00) A(FF,00,95,09) A(FF,15,D4,48) A(FF,13,D2,46) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(FF,1F,DE,52) 
					A(FF,06,C5,39) A(FF,00,5D,00) A(FF,00,74,00) A(FF,00,80,00) A(FF,00,89,00) A(FF,00,90,04) A(FF,00,8D,01) A(FF,00,85,00) A(FF,00,7C,00) A(FF,00,73,00) 
					A(FF,00,83,00) A(FF,18,D7,4B) A(FF,0E,CD,41) A(00,00,00,00) A(FF,18,D7,4B) A(FF,1D,DC,50) A(FF,00,6A,00) A(FF,00,68,00) A(FF,00,74,00) A(FF,00,71,00) 
					A(FF,00,82,00) A(FF,00,88,00) A(FF,00,86,00) A(FF,00,81,00) A(FF,00,79,00) A(FF,00,71,00) A(FF,00,68,00) A(FF,00,96,0A) A(FF,18,D7,4B) A(FF,0F,CE,42) 
					A(FF,1E,DD,51) A(FF,00,B3,27) A(FF,00,53,00) A(FF,00,68,00) A(FF,00,70,00) A(FF,00,68,00) A(FF,9C,F0,90) A(FF,00,8F,03) A(FF,00,7D,00) A(FF,00,7A,00) 
					A(FF,00,74,00) A(FF,00,6D,00) A(FF,00,65,00) A(FF,00,60,00) A(FF,16,D5,49) A(FF,09,C8,3C) A(FF,23,E2,56) A(FF,00,83,00) A(FF,00,59,00) A(FF,00,63,00) 
					A(FF,00,6A,00) A(FF,00,65,00) A(FF,9C,F0,90) A(FF,9C,F0,90) A(FF,00,B8,2C) A(FF,00,7C,00) A(FF,00,6D,00) A(FF,00,67,00) A(FF,00,60,00) A(FF,00,5A,00) 
					A(FF,00,AD,21) A(FF,0A,C9,3D) A(FF,24,E3,57) A(FF,00,6F,00) A(FF,00,59,00) A(FF,00,5D,00) A(FF,00,63,00) A(FF,00,62,00) A(FF,8D,E0,80) A(FF,9C,F0,90) 
					A(FF,8F,E3,83) A(FF,8C,E0,80) A(FF,00,A5,18) A(FF,00,65,00) A(FF,00,5B,00) A(FF,00,56,00) A(FF,00,98,0B) A(FF,09,C8,3C) A(FF,24,E3,57) A(FF,00,71,00) 
					A(FF,00,54,00) A(FF,00,58,00) A(FF,00,5C,00) A(FF,00,5F,00) A(FF,91,E4,84) A(FF,8D,E0,80) A(FF,83,D6,76) A(FF,83,D6,76) A(FF,00,9C,0F) A(FF,00,5E,00) 
					A(FF,00,56,00) A(FF,00,52,00) A(FF,00,97,0A) A(FF,07,C6,3A) A(FF,21,E0,54) A(FF,00,8D,00) A(FF,00,4D,00) A(FF,00,53,00) A(FF,00,56,00) A(FF,00,5C,00) 
					A(FF,91,E5,85) A(FF,91,E4,84) A(FF,00,AC,1F) A(FF,00,65,00) A(FF,00,58,00) A(FF,00,55,00) A(FF,00,52,00) A(FF,00,4E,00) A(FF,00,AC,1F) A(FF,04,C3,37) 
					A(FF,1B,DA,4E) A(FF,03,C2,35) A(FF,00,47,00) A(FF,00,4E,00) A(FF,00,51,00) A(FF,00,5A,00) A(FF,90,E4,84) A(FF,00,6D,00) A(FF,00,55,00) A(FF,00,54,00) 
					A(FF,00,52,00) A(FF,00,50,00) A(FF,00,4D,00) A(FF,00,50,00) A(FF,19,D8,4C) A(FF,00,BC,30) A(FF,16,D5,49) A(FF,1C,DB,4F) A(FF,00,7D,00) A(FF,00,48,00) 
					A(FF,00,4C,00) A(FF,00,4D,00) A(FF,00,4E,00) A(FF,00,4F,00) A(FF,00,4F,00) A(FF,00,4E,00) A(FF,00,4D,00) A(FF,00,4B,00) A(FF,00,49,00) A(FF,00,94,05) 
					A(FF,0F,CE,42) A(FF,09,C8,3C) A(00,00,00,00) A(FF,15,D4,48) A(FF,16,D5,49) A(FF,00,68,00) A(FF,00,46,00) A(FF,00,48,00) A(FF,00,49,00) A(FF,00,4A,00) 
					A(FF,00,4A,00) A(FF,00,49,00) A(FF,00,48,00) A(FF,00,46,00) A(FF,00,75,00) A(FF,1E,DD,51) A(FF,00,B8,2C) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(FF,11,D0,44) A(FF,19,D8,4C) A(FF,00,89,00) A(FF,00,48,00) A(FF,00,44,00) A(FF,00,45,00) A(FF,00,44,00) A(FF,00,44,00) A(FF,00,4A,00) A(FF,00,94,04) 
					A(FF,1E,DD,51) A(FF,00,B5,29) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(FF,0C,CB,3F) A(FF,15,D4,48) A(FF,17,D6,49) 
					A(FF,00,AA,1A) A(FF,00,92,02) A(FF,00,93,03) A(FF,00,AD,1E) A(FF,1B,DA,4D) A(FF,0D,CC,40) A(FF,00,B7,2B) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(FF,10,CF,43) A(FF,06,C5,39) A(FF,09,C8,3C) A(FF,08,C7,3B) A(FF,06,C5,39) A(FF,02,C1,35) 
					A(FF,00,BA,2E) A(FF,08,C7,3B) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) ;
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