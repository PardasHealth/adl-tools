note
	description: "Icon loader class generated by icondbc"
	keywords:    "Embedded icons"
	author:      "Thomas Beale <thomas.beale@oceaninformatics.com>"
	support:     "http://www.openehr.org/issues/browse/AWB"
	copyright:   "Copyright (c) 2013- Ocean Informatics Pty Ltd"
	license:     "Apache 2.0 License <http://www.apache.org/licenses/LICENSE-2.0.html>"

class ICON_RM_OPENEHR_CONTACT

inherit
	ICON_SOURCE

create
	make

feature {NONE} -- Initialization

	make
			-- Initialization
		do
			key := "rm/openehr/contact"
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
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,C3,CA,D1) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(00,DD,E0,E2) A(00,00,00,00) A(00,00,00,00) A(69,45,6B,98) A(A1,86,9D,BA) A(9F,82,9B,B8) A(9F,82,9B,B8) A(9F,82,9B,B8) A(9F,83,9B,B8) A(9F,83,9B,B8) 
					A(9F,83,9B,B8) A(9F,82,9B,B8) A(9F,82,9B,B8) A(9F,83,9B,B8) A(9F,83,9B,B8) A(A2,87,9E,BA) A(64,44,5F,80) A(00,00,00,00) A(93,62,7C,9C) A(FF,FA,FB,FB) 
					A(FF,FE,FC,FA) A(FF,C3,C1,BE) A(FF,9A,97,94) A(FF,E3,E1,DE) A(FF,F7,F4,F2) A(FF,F7,F5,F3) A(FF,FF,FB,F7) A(FF,B6,C2,D1) A(FF,DB,DE,E0) A(FF,F7,F5,F3) 
					A(FF,F7,F5,F3) A(FF,F8,F6,F4) A(FF,DC,DD,DC) A(67,3A,4A,5C) A(DE,99,A4,B1) A(FF,E6,E6,E6) A(FF,9A,99,98) A(FF,4B,47,44) A(FF,35,32,30) A(FF,07,06,06) 
					A(FF,D3,D6,D7) A(FF,EE,EC,EA) A(FF,72,8B,AC) A(FF,5D,87,BA) A(FF,26,4B,77) A(FF,B7,BC,C2) A(FF,E7,E7,E6) A(FF,CA,D5,E3) A(FF,83,9A,B6) A(BD,6B,71,79) 
					A(DF,96,A1,AD) A(FF,F1,F1,F1) A(FF,37,35,36) A(FF,A9,90,75) A(FF,9D,80,64) A(FF,89,54,2C) A(FF,BF,95,82) A(FF,A0,AF,C0) A(FF,4A,71,A3) A(FF,D9,DC,DF) 
					A(FF,84,95,AA) A(FF,42,68,96) A(FF,8B,A2,BD) A(FF,2B,4A,71) A(FF,9F,A4,AB) A(BF,68,6F,77) A(DF,96,A1,AD) A(FF,F0,EF,EF) A(FF,64,4F,40) A(FF,BD,8C,5E) 
					A(FF,C6,8D,58) A(FF,A5,59,25) A(FF,BE,93,7D) A(FF,90,9E,B0) A(FF,B0,B6,BC) A(FF,E5,E5,E6) A(FF,EF,EE,ED) A(FF,9D,A7,B4) A(FF,57,6B,83) A(FF,B9,BD,C2) 
					A(FF,EA,E9,E8) A(BF,67,6E,76) A(DF,96,A1,AD) A(FF,E6,E6,E6) A(FF,D6,CB,C7) A(FF,97,43,13) A(FF,9C,4B,19) A(FF,9B,45,12) A(FF,D9,D4,D3) A(FF,E5,E5,E4) 
					A(FF,E5,E5,E5) A(FF,D7,D7,D7) A(FF,A5,A5,A5) A(FF,D2,D2,D2) A(FF,EB,EA,E9) A(FF,E7,E7,E7) A(FF,DA,DA,D9) A(BF,67,6D,76) A(DF,96,A1,AD) A(FF,E6,EA,EF) 
					A(FF,ED,B6,75) A(FF,E9,B2,70) A(FF,B6,A0,99) A(FF,8B,92,CD) A(FF,AC,47,00) A(FF,E1,DE,DD) A(FF,DC,DC,DC) A(FF,8C,8C,8C) A(FF,E8,E8,E8) A(FF,70,70,70) 
					A(FF,C3,C3,C3) A(FF,76,76,76) A(FF,C4,C4,C3) A(BF,66,6E,76) A(DF,96,A1,AC) A(FF,E5,C6,A4) A(FF,FA,A3,34) A(FF,FE,B4,51) A(FF,FD,DB,A4) A(FF,5F,61,D0) 
					A(FF,BF,6A,16) A(FF,B4,87,67) A(FF,D5,D5,D5) A(FF,D3,D3,D3) A(FF,AB,AB,AB) A(FF,EB,EB,EB) A(FF,B1,B1,B1) A(FF,E7,E7,E7) A(FF,E2,E2,E1) A(BF,66,6E,76) 
					A(DF,9B,A7,B3) A(FF,E7,A5,5B) A(FF,FB,9F,2B) A(FF,EB,89,19) A(FF,FF,8A,02) A(FF,3F,39,A3) A(FF,98,4E,1E) A(FF,A1,63,35) A(FF,DF,E2,E4) A(FF,97,97,97) 
					A(FF,D9,D9,D9) A(FF,6A,6A,6A) A(FF,DD,DD,DD) A(FF,77,77,77) A(FF,CC,CB,CB) A(BF,66,6E,76) A(DE,9A,A6,B2) A(FF,DB,88,36) A(FF,F3,7E,04) A(FF,EF,79,01) 
					A(FF,C4,5E,01) A(FF,98,4B,24) A(FF,6B,30,24) A(FF,A2,78,59) A(FF,C7,C7,C8) A(FF,CE,CE,CE) A(FF,AA,AA,AA) A(FF,E3,E3,E3) A(FF,97,97,97) A(FF,E1,E1,E1) 
					A(FF,E2,E2,E1) A(BF,66,6E,76) A(D7,8D,98,A4) A(FF,C5,AA,93) A(FF,B3,4E,00) A(FF,BB,50,00) A(FF,AB,45,00) A(FF,89,45,0F) A(FF,B0,94,7D) A(FF,E7,EB,ED) 
					A(FF,DD,DD,DD) A(FF,97,97,97) A(FF,D9,D9,D9) A(FF,6A,6A,6A) A(FF,DD,DD,DD) A(FF,77,77,77) A(FF,CB,CB,CA) A(B9,63,69,71) A(57,5B,6D,85) A(FF,A2,A7,AC) 
					A(FF,CD,D4,D8) A(FF,BB,BC,BC) A(FF,C0,C7,C9) A(FF,D5,D9,DA) A(FF,D1,D0,CF) A(FF,D1,D0,CF) A(FF,B0,B0,AF) A(FF,C6,C5,C4) A(FF,CF,CE,CD) A(FF,CF,CE,CD) 
					A(FF,85,84,83) A(FF,CB,CA,C9) A(FF,88,8D,93) A(44,49,54,64) A(00,00,00,00) A(21,8A,A4,C3) A(62,50,67,83) A(60,4C,64,80) A(60,4C,64,80) A(60,4C,64,80) 
					A(60,4C,64,80) A(60,4C,64,80) A(60,4B,64,80) A(60,4B,64,80) A(60,4C,64,80) A(60,4B,64,80) A(60,4B,65,7F) A(62,4F,66,81) A(1B,97,A8,BD) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
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