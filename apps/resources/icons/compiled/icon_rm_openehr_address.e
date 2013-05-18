note
	description: "Icon loader class generated by icondbc"
	keywords:    "Embedded icons"
	author:      "Thomas Beale <thomas.beale@oceaninformatics.com>"
	support:     "http://www.openehr.org/issues/browse/AWB"
	copyright:   "Copyright (c) 2013- Ocean Informatics Pty Ltd"
	license:     "Apache 2.0 License <http://www.apache.org/licenses/LICENSE-2.0.html>"

class ICON_RM_OPENEHR_ADDRESS

inherit
	ICON_SOURCE

create
	make

feature {NONE} -- Initialization

	make
			-- Initialization
		do
			key := "rm/openehr/address"
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
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(FF,50,6E,93) A(FF,57,5F,69) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(FF,64,7D,9D) A(FF,5C,84,B4) A(FF,2E,4D,73) A(FF,97,A3,B1) A(FF,72,81,92) A(FF,86,92,A1) A(FF,6E,86,A3) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(FF,5E,78,98) A(FF,61,88,B8) A(FF,43,6A,98) 
					A(FF,3F,66,94) A(FF,31,51,79) A(FF,B0,B2,B6) A(FF,FF,FD,FB) A(FF,65,82,A4) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(FF,38,5A,84) A(FF,60,87,B8) A(FF,41,68,96) A(FF,3F,66,94) A(FF,3E,65,93) A(FF,3F,65,94) A(FF,2F,51,78) A(FF,DE,DE,DF) 
					A(FF,66,83,A7) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(FF,70,88,A7) A(FF,62,8A,BA) A(FF,3F,66,94) 
					A(FF,3F,66,94) A(FF,3F,66,94) A(FF,3F,65,94) A(FF,3E,65,93) A(FF,3F,65,94) A(FF,2E,50,78) A(FF,56,69,80) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(FF,4C,6C,93) A(FF,61,89,BA) A(FF,3E,65,93) A(FF,3F,66,94) A(FF,3F,66,94) A(FF,3F,66,94) A(FF,3F,66,94) A(FF,3F,65,94) 
					A(FF,3E,66,93) A(FF,3F,66,94) A(FF,37,58,80) A(FF,42,55,69) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(FF,6A,8A,AF) A(FF,61,88,BA) A(FF,3E,65,94) 
					A(FF,40,67,96) A(FF,40,67,96) A(FF,40,67,96) A(FF,40,67,96) A(FF,40,67,96) A(FF,40,67,96) A(FF,40,67,96) A(FF,40,67,96) A(FF,40,67,96) A(FF,36,59,83) 
					A(FF,71,80,92) A(00,00,00,00) A(FF,80,95,AE) A(FF,4A,65,85) A(FF,54,68,81) A(FF,6D,7E,96) A(FF,6D,7E,96) A(FF,6D,7E,96) A(FF,6D,7E,96) A(FF,6D,7E,96) 
					A(FF,6D,7E,96) A(FF,6D,7E,96) A(FF,6D,7E,96) A(FF,6D,7E,96) A(FF,6F,81,98) A(FF,49,5D,76) A(FF,44,5D,79) A(FF,83,91,A1) A(00,00,00,00) A(00,00,00,00) 
					A(FF,A0,A9,B3) A(FF,F0,EF,EE) A(FF,F0,EF,EE) A(FF,F0,EF,EE) A(FF,F0,EF,EE) A(FF,F0,EF,EE) A(FF,F0,EF,EE) A(FF,F0,EF,EE) A(FF,F0,EF,EE) A(FF,F0,EF,EE) 
					A(FF,F2,F0,EF) A(FF,64,6B,72) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(FF,9E,A7,B3) A(FF,E6,E6,E6) A(FF,E6,E6,E6) A(FF,E6,E6,E6) 
					A(FF,E6,E6,E6) A(FF,E5,E5,E5) A(FF,E5,E5,E5) A(FF,E6,E6,E6) A(FF,E6,E6,E6) A(FF,E6,E6,E6) A(FF,E7,E7,E7) A(FF,65,6D,74) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(FF,9E,A7,B3) A(FF,E5,E6,E6) A(FF,E6,E6,E6) A(FF,E6,E6,E6) A(FF,DF,E0,E1) A(FF,98,AA,BF) A(FF,97,A8,BC) A(FF,DE,DE,DE) 
					A(FF,E6,E6,E6) A(FF,E6,E6,E6) A(FF,E7,E7,E7) A(FF,65,6D,74) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(FF,9E,A7,B3) A(FF,E5,E6,E6) 
					A(FF,E6,E6,E6) A(FF,E5,E5,E5) A(FF,AE,B4,BB) A(FF,47,70,9E) A(FF,41,66,92) A(FF,A7,A9,AC) A(FF,E5,E5,E5) A(FF,E6,E6,E6) A(FF,E7,E7,E7) A(FF,65,6D,74) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(FF,9E,A7,B3) A(FF,E5,E6,E6) A(FF,E6,E6,E6) A(FF,E5,E5,E5) A(FF,B1,B6,BE) A(FF,39,5F,8E) 
					A(FF,32,55,80) A(FF,AA,AC,AF) A(FF,E5,E5,E5) A(FF,E6,E6,E6) A(FF,E7,E7,E7) A(FF,65,6D,74) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(FF,9E,A7,B3) A(FF,E5,E6,E6) A(FF,E6,E6,E6) A(FF,E5,E5,E5) A(FF,B1,B6,BE) A(FF,38,5F,8E) A(FF,31,55,7F) A(FF,AB,AC,B0) A(FF,E5,E5,E5) A(FF,E6,E6,E6) 
					A(FF,E7,E7,E7) A(FF,65,6D,74) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(FF,9F,A7,B2) A(FF,E0,DF,DE) A(FF,E1,E0,DE) A(FF,E1,E0,DE) 
					A(FF,AD,B2,B9) A(FF,39,5E,8B) A(FF,32,55,7E) A(FF,A7,A8,A9) A(FF,E1,E0,DE) A(FF,E1,E0,DE) A(FF,E5,E3,E1) A(FF,67,6E,75) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(FF,5E,71,86) A(FF,54,66,7A) A(FF,54,66,7A) A(FF,54,66,7A) A(FF,4F,63,7B) A(FF,46,5B,75) A(FF,47,5E,77) A(FF,4B,5E,72) 
					A(FF,54,66,7A) A(FF,54,66,7A) A(FF,53,66,7A) A(FF,62,71,83) A(00,00,00,00) A(00,00,00,00) ;
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