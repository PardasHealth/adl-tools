note
	description: "Icon loader class generated by icondbc"
	keywords:    "Embedded icons"
	author:      "Thomas Beale <thomas.beale@oceaninformatics.com>"
	support:     "http://www.openehr.org/issues/browse/AWB"
	copyright:   "Copyright (c) 2013- Ocean Informatics Pty Ltd"
	license:     "Apache 2.0 License <http://www.apache.org/licenses/LICENSE-2.0.html>"

class ICON_RM_OPENEHR_DV_ORDINAL

inherit
	ICON_SOURCE

create
	make

feature {NONE} -- Initialization

	make
			-- Initialization
		do
			key := "rm/openehr/dv_ordinal"
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
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,6C,89,AA) A(00,00,00,00) A(00,FF,FF,FF) A(30,84,97,AD) A(35,81,95,AB) A(05,FF,FF,FF) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,9D,AE,C3) A(00,00,00,00) 
					A(52,63,80,A4) A(CD,64,8A,B8) A(FF,61,88,B8) A(FF,58,80,B1) A(FF,51,79,AA) A(FF,4C,71,A0) A(E9,53,74,9B) A(6E,5D,75,90) A(00,00,00,00) A(00,82,90,A0) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,79,8E,A8) A(00,00,00,00) A(BF,59,7D,A8) A(FF,63,8C,BE) A(FE,4B,71,A0) A(FF,3C,63,91) A(FF,3D,64,92) 
					A(FF,3D,64,92) A(FF,3D,64,92) A(FF,41,68,97) A(FF,40,67,95) A(E1,43,5F,81) A(07,88,80,76) A(00,54,62,74) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(D3,54,78,A2) A(FF,52,7C,AE) A(FF,34,5D,8D) A(FF,36,5F,90) A(FF,36,5F,90) A(FF,36,5F,90) A(FF,36,5F,90) A(FF,36,5F,90) A(FF,36,5F,90) A(FF,36,5F,8F) 
					A(FE,37,60,91) A(E9,35,50,71) A(00,FF,FF,FF) A(00,C4,C5,C7) A(00,00,00,00) A(7C,4E,6C,91) A(FF,4E,77,A8) A(FF,96,A2,B0) A(FF,DB,DC,DC) A(FF,DB,DB,DC) 
					A(FF,DB,DB,DC) A(FF,DB,DB,DC) A(FF,DB,DB,DC) A(FF,DB,DB,DC) A(FF,DB,DB,DC) A(FF,DB,DB,DC) A(FF,BF,BE,BC) A(FF,35,5B,88) A(A1,38,4C,65) A(00,00,00,00) 
					A(00,00,00,00) A(FF,47,6A,95) A(FF,3E,66,94) A(FF,5C,78,98) A(FF,66,7D,98) A(FF,66,7D,98) A(FF,66,7D,98) A(FF,66,7D,98) A(FF,66,7D,98) A(FF,66,7D,98) 
					A(FF,66,7D,98) A(FF,66,7D,98) A(FF,67,7D,97) A(FF,3D,63,91) A(FF,30,4D,70) A(0D,8F,7D,6C) A(42,53,68,81) A(FF,40,66,94) A(FF,3E,65,93) A(FF,3C,64,93) 
					A(FF,3B,63,92) A(FF,3B,63,92) A(FF,3B,63,92) A(FF,3B,63,92) A(FF,3B,63,92) A(FF,3B,63,92) A(FF,3B,63,92) A(FF,3B,63,92) A(FF,3B,63,92) A(FF,3F,66,94) 
					A(FF,38,5B,87) A(66,33,3F,4E) A(78,52,68,83) A(FF,3E,65,94) A(FF,3D,65,93) A(FF,82,96,AD) A(FF,BD,C8,D6) A(FF,BC,C7,D5) A(FF,BC,C7,D5) A(FF,BC,C7,D5) 
					A(FF,BC,C7,D5) A(FF,BC,C7,D5) A(FF,BC,C7,D5) A(FF,BC,C7,D5) A(FF,A7,B1,BE) A(FF,3A,61,8E) A(FE,3C,63,90) A(94,33,42,55) A(81,54,69,82) A(FE,3B,62,91) 
					A(FF,3D,65,93) A(FF,72,86,9D) A(FF,83,8F,9D) A(FF,83,8F,9D) A(FF,83,8F,9D) A(FF,83,8F,9D) A(FF,83,8F,9D) A(FF,83,8F,9D) A(FF,83,8F,9D) A(FF,83,8F,9D) 
					A(FF,7E,88,95) A(FF,3B,62,8F) A(FF,3D,63,90) A(A1,3C,4A,5C) A(4E,42,55,6B) A(FF,39,5E,8B) A(FF,3F,66,94) A(FF,3C,64,93) A(FF,3C,63,92) A(FF,3C,63,92) 
					A(FF,3C,63,92) A(FF,3C,63,92) A(FF,3C,63,92) A(FF,3C,63,92) A(FF,3C,63,92) A(FF,3C,63,92) A(FF,3B,63,92) A(FF,3F,66,94) A(FF,38,5C,88) A(76,2F,3B,49) 
					A(04,FF,FF,FF) A(FF,36,56,7B) A(FF,3E,65,94) A(FF,59,78,9D) A(FF,67,83,A4) A(FF,67,83,A5) A(FF,67,83,A5) A(FF,67,83,A5) A(FF,67,83,A5) A(FF,67,83,A5) 
					A(FF,67,83,A5) A(FF,67,83,A5) A(FF,68,84,A5) A(FF,3D,64,92) A(FF,2A,46,69) A(34,8B,8D,90) A(00,00,00,00) A(A5,45,5B,77) A(FE,39,60,8E) A(FF,94,9E,A9) 
					A(FF,D0,CD,C9) A(FF,CF,CC,C8) A(FF,CF,CC,C8) A(FF,CF,CC,C8) A(FF,CF,CC,C8) A(FF,CF,CC,C8) A(FF,CF,CC,C8) A(FF,CF,CC,C8) A(FF,B3,AE,A7) A(FE,37,5D,89) 
					A(D9,3E,4F,63) A(00,00,00,00) A(00,B1,BB,C6) A(02,FF,FF,FF) A(FB,3D,57,76) A(FE,3F,66,94) A(FF,41,68,97) A(FF,41,68,97) A(FF,41,68,97) A(FF,41,68,97) 
					A(FF,41,68,97) A(FF,41,68,97) A(FF,41,68,97) A(FF,41,68,97) A(FE,43,6A,98) A(FF,30,47,64) A(21,94,9A,A1) A(00,8C,93,9B) A(00,00,00,00) A(00,71,83,97) 
					A(16,7C,88,9C) A(FB,41,5A,79) A(FE,39,5E,89) A(FF,3F,66,95) A(FF,3E,66,94) A(FF,3F,66,93) A(FF,3F,66,94) A(FF,3E,66,94) A(FF,3E,66,94) A(FE,40,66,92) 
					A(FF,37,4D,69) A(3B,6D,78,85) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,7E,8F,A4) A(02,FF,FF,FF) A(A6,5B,6F,87) A(FF,3C,57,79) 
					A(FF,37,58,7F) A(FF,3C,60,8C) A(FE,3D,61,8D) A(FF,3D,5E,85) A(FF,3C,56,76) A(B7,47,59,6E) A(0F,AA,B3,C0) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,E7,EB,F0) A(00,00,00,00) A(00,00,00,00) A(4B,6F,83,9B) A(77,58,6B,82) A(81,5F,70,84) A(53,57,68,7E) 
					A(0D,FF,FF,FF) A(00,00,00,00) A(00,BD,C5,CE) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) ;
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