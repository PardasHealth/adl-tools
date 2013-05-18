note
	description: "Icon loader class generated by icondbc"
	keywords:    "Embedded icons"
	author:      "Thomas Beale <thomas.beale@oceaninformatics.com>"
	support:     "http://www.openehr.org/issues/browse/AWB"
	copyright:   "Copyright (c) 2013- Ocean Informatics Pty Ltd"
	license:     "Apache 2.0 License <http://www.apache.org/licenses/LICENSE-2.0.html>"

class ICON_TOOL_DIFF32

inherit
	ICON_SOURCE

create
	make

feature {NONE} -- Initialization

	make
			-- Initialization
		do
			key := "tool/diff32"
			make_with_size (32, 32)
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
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(FF,EA,EA,F9) A(FF,E0,E2,F8) A(FF,DA,DE,F8) A(FF,CA,D2,F7) A(FF,BF,C9,F7) A(FF,AF,BD,F8) 
					A(FF,A9,B9,F7) A(FF,A0,B5,F6) A(FF,82,A7,F3) A(FF,7A,A4,F2) A(FF,75,A3,F2) A(FF,9A,AC,F7) A(FF,9A,AC,F7) A(FF,98,AB,F7) A(FF,D9,DD,F5) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(FF,DD,E4,ED) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(FF,EE,EE,F3) A(FF,E6,E6,FF) A(FF,D6,DA,FE) A(FF,CC,D2,FE) A(FF,B1,BF,FC) 
					A(FF,A6,B7,FB) A(FF,97,AB,FB) A(FF,81,9B,F9) A(FF,6F,92,F7) A(FF,3E,7B,F3) A(FF,30,77,F1) A(FF,28,75,F0) A(FF,68,86,F9) A(FF,68,86,F9) A(FF,68,86,F9) 
					A(FF,D3,D9,F5) A(FF,E7,E8,F5) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(FF,E9,EA,F2) A(FF,D0,D6,FE) A(FF,E4,E6,FE) 
					A(FF,F2,F2,FF) A(FF,EF,F0,FF) A(FF,EE,EE,FF) A(FF,ED,ED,FF) A(FF,EA,EB,FF) A(FF,E8,EA,FF) A(FF,E4,E6,FF) A(FF,E4,E6,FF) A(FF,E4,E6,FF) A(FF,C1,C5,FF) 
					A(FF,9D,AB,FC) A(FF,68,86,F9) A(FF,29,6F,E2) A(FF,3E,7E,E1) A(FF,D0,D2,F5) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(FF,DC,E3,EC) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(FF,E7,E8,F2) 
					A(FF,C7,CF,FD) A(FF,E0,E3,FE) A(FF,F1,F1,FF) A(FF,F2,F3,FF) A(FF,F1,F1,FF) A(FF,F0,F1,FF) A(FF,EE,EF,FF) A(FF,ED,EE,FF) A(FF,EA,EB,FF) A(FF,EA,EB,FF) 
					A(FF,EA,EB,FF) A(FF,C2,C6,FF) A(FF,9A,AB,FB) A(FF,5E,83,F7) A(FF,6F,9C,EC) A(FF,76,A3,E8) A(FF,85,A5,E4) A(FF,A0,B0,ED) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(FF,E5,E7,F2) A(FF,BA,C5,FD) A(FF,DB,DF,FE) A(FF,F1,F1,FF) A(FF,F7,F8,FF) A(FF,F6,F7,FF) A(FF,F6,F7,FF) A(FF,F6,F7,FF) A(FF,F5,F6,FF) 
					A(FF,F4,F4,FF) A(FF,F4,F4,FF) A(FF,F4,F4,FF) A(FF,C5,C9,FF) A(FF,96,AB,FB) A(FF,50,80,F6) A(FF,D8,E1,FD) A(FF,CC,DB,F4) A(FF,15,62,CC) A(FF,87,A7,E4) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(FF,E1,E4,F2) A(FF,A8,B8,FC) A(FF,D3,D9,FD) A(FF,EF,F0,FF) A(FF,F6,F7,FF) A(FF,F5,F6,FF) A(FF,F5,F6,FF) 
					A(FF,F5,F6,FF) A(FF,F4,F5,FF) A(FF,F3,F3,FF) A(FF,F3,F3,FF) A(FF,F3,F3,FF) A(FF,C8,CB,FF) A(FF,A6,B0,FD) A(FF,76,89,FB) A(FF,72,95,F8) A(FF,64,90,F4) 
					A(FF,30,74,EA) A(FF,35,74,D8) A(FF,39,75,CD) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(FF,DF,E3,F2) A(FF,9F,B1,FB) A(FF,CF,D6,FD) A(FF,EE,EF,FF) A(FF,F5,F6,FF) 
					A(FF,F4,F5,FF) A(FF,F4,F5,FF) A(FF,F4,F5,FF) A(FF,F3,F4,FF) A(FF,F2,F2,FF) A(FF,F2,F2,FF) A(FF,F2,F2,FF) A(FF,C9,CC,FF) A(FF,B1,B8,FE) A(FF,8F,99,FD) 
					A(FF,6F,90,F8) A(FF,64,8D,F7) A(FF,53,89,F4) A(FF,2D,71,DB) A(FF,15,61,CB) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(FF,DC,E1,F2) A(FF,8E,A5,FA) A(FF,C7,D0,FD) 
					A(FF,EE,EE,FF) A(FF,F5,F6,FF) A(FF,F4,F5,FF) A(FF,F4,F4,FF) A(FF,F4,F4,FF) A(FF,F3,F3,FF) A(FF,F2,F2,FF) A(FF,F2,F2,FF) A(FF,F2,F2,FF) A(FF,CD,D0,FF) 
					A(FF,CD,D0,FF) A(FF,CD,D0,FF) A(FF,C9,CC,FF) A(FF,C8,CB,FF) A(FF,C5,C9,FF) A(FF,61,95,F5) A(FF,1F,73,EF) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(FF,D9,DE,F1) 
					A(FF,80,9A,F9) A(FF,C1,CB,FC) A(FF,ED,ED,FF) A(FF,CB,CB,CF) A(FF,C7,C8,CC) A(FF,C3,C3,C7) A(FF,BD,BD,C1) A(FF,BA,BA,BE) A(FF,B4,B4,B9) A(FF,D8,D8,E2) ;
					memcpy ((EIF_NATURAL_32 *)$a_ptr + $a_offset, &l_data, sizeof l_data - 1);
				}
			}"
		end
	
	c_colors_1 (a_ptr: POINTER; a_offset: INTEGER)
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
					A(FF,F2,F2,FF) A(FF,DF,E0,FF) A(FF,DE,E0,FF) A(FF,DE,E0,FF) A(FF,DC,DE,FF) A(FF,DB,DD,FF) A(FF,D5,D8,FF) A(FF,67,9B,F5) A(FF,1F,73,EF) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(FF,D8,DD,F1) A(FF,78,94,F9) A(FF,BE,C9,FC) A(FF,ED,ED,FF) A(FF,AF,AF,AF) A(FF,AA,AA,AA) A(FF,A3,A3,A3) A(FF,99,99,99) A(FF,94,94,94) 
					A(FF,8B,8B,8B) A(FF,C8,C8,D0) A(FF,F2,F2,FF) A(FF,EB,EC,FF) A(FF,EA,EB,FF) A(FF,EA,EB,FF) A(FF,EA,EB,FF) A(FF,E8,E9,FF) A(FF,E1,E3,FF) A(FF,6C,9F,F5) 
					A(FF,1F,73,EF) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(FF,CF,D9,F1) A(FF,4B,7E,F5) A(FF,AA,BF,FB) A(FF,EA,EB,FF) A(FF,F2,F2,FF) A(FF,F1,F1,FF) A(FF,F0,F1,FF) 
					A(FF,F0,F1,FF) A(FF,EF,F0,FF) A(FF,EE,EF,FF) A(FF,EC,ED,FF) A(FF,EC,ED,FF) A(FF,EB,EC,FF) A(FF,EA,EB,FF) A(FF,EA,EB,FF) A(FF,EA,EB,FF) A(FF,E8,E9,FF) 
					A(FF,E1,E3,FF) A(FF,69,9A,EA) A(FF,1A,6A,DD) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(FF,CE,D8,F0) A(FF,48,7D,F4) A(FF,A8,BE,FA) A(FF,E9,EA,FF) A(FF,D7,D7,DF) 
					A(FF,D5,D5,DD) A(FF,D3,D4,DC) A(FF,D1,D2,DA) A(FF,CF,D0,D9) A(FF,CD,CE,D7) A(FF,CA,CB,D6) A(FF,CA,CA,D5) A(FF,C7,C7,D3) A(FF,C5,C5,D1) A(FF,C4,C4,D0) 
					A(FF,C2,C2,CE) A(FF,C7,C8,D7) A(FF,E1,E3,FF) A(FF,69,99,E8) A(FF,19,68,D9) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(FF,CD,D8,F0) A(FF,44,7C,F4) A(FF,A6,BE,FA) 
					A(FF,E8,EA,FF) A(FF,AF,AF,AF) A(FF,AC,AC,AC) A(FF,A9,A9,A9) A(FF,A4,A4,A4) A(FF,A1,A1,A1) A(FF,9D,9D,9D) A(FF,99,99,99) A(FF,97,97,97) A(FF,91,91,91) 
					A(FF,8E,8E,8E) A(FF,8B,8B,8B) A(FF,86,86,86) A(FF,97,98,9D) A(FF,E3,E5,FF) A(FF,69,98,E5) A(FF,18,66,D5) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(FF,CC,D8,F0) 
					A(FF,3D,7B,F3) A(FF,A2,BC,FA) A(FF,E7,E8,FF) A(FF,E2,E3,EF) A(FF,E0,E1,EE) A(FF,E0,E1,ED) A(FF,DF,E0,EC) A(FF,DD,DE,EC) A(FF,DC,DD,EB) A(FF,D9,DA,EA) 
					A(FF,D9,DA,EA) A(FF,D6,D8,E9) A(FF,D5,D6,E8) A(FF,D4,D6,E7) A(FF,D3,D5,E6) A(FF,D6,D8,EB) A(FF,E4,E6,FF) A(FF,68,97,E1) A(FF,15,62,CD) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(FF,CB,D7,F0) A(FF,39,7A,F2) A(FF,A0,BB,F9) A(FF,E6,E7,FF) A(FF,E2,E3,EF) A(FF,E0,E1,EE) A(FF,E0,E1,ED) A(FF,DF,E0,EC) A(FF,DD,DE,EC) 
					A(FF,DC,DD,EB) A(FF,D9,DA,EA) A(FF,D9,DA,EA) A(FF,D6,D8,E9) A(FF,D5,D6,E8) A(FF,D4,D6,E7) A(FF,D3,D5,E6) A(FF,D6,D8,EB) A(FF,E6,E7,FF) A(FF,67,96,DD) 
					A(FF,14,60,C8) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(FF,C9,D7,F0) A(FF,2D,77,F1) A(FF,9A,B9,F9) A(FF,E4,E6,FF) A(FF,AF,AF,AF) A(FF,AC,AC,AC) A(FF,A9,A9,A9) 
					A(FF,A4,A4,A4) A(FF,A1,A1,A1) A(FF,9D,9D,9D) A(FF,99,99,99) A(FF,97,97,97) A(FF,91,91,91) A(FF,8E,8E,8E) A(FF,8B,8B,8B) A(FF,86,86,86) A(FF,99,99,9D) 
					A(FF,EA,EA,FF) A(FF,67,93,D5) A(FF,10,59,BA) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(FF,C7,D7,F0) A(FF,28,75,F0) A(FF,98,B8,F9) A(FF,E3,E5,FF) A(FF,D3,D4,DF) 
					A(FF,D1,D2,DD) A(FF,D0,D1,DC) A(FF,CE,CF,DA) A(FF,CC,CD,D9) A(FF,CA,CB,D7) A(FF,C7,C8,D6) A(FF,C6,C7,D5) A(FF,C3,C4,D3) A(FF,C1,C2,D1) A(FF,C0,C1,D0) 
					A(FF,BE,BF,CE) A(FF,C6,C7,D7) A(FF,EB,EB,FF) A(FF,67,93,D5) A(FF,10,59,BA) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(FF,C7,D7,F0) A(FF,25,75,F0) A(FF,97,B8,F9) 
					A(FF,E3,E5,FF) A(FF,EC,ED,FF) A(FF,EB,EC,FF) A(FF,EB,EC,FF) A(FF,EB,EC,FF) A(FF,EA,EB,FF) A(FF,E8,EA,FF) A(FF,E6,E8,FF) A(FF,E6,E8,FF) A(FF,E5,E6,FF) 
					A(FF,E4,E5,FF) A(FF,E4,E5,FF) A(FF,E4,E5,FF) A(FF,E5,E6,FF) A(FF,EC,EC,FF) A(FF,68,93,D5) A(FF,10,59,BA) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(FF,C6,D7,EF) 
					A(FF,1F,73,EF) A(FF,94,B6,F8) A(FF,E2,E3,FF) A(FF,AF,AF,AF) A(FF,AC,AC,AC) A(FF,A9,A9,A9) A(FF,A4,A4,A4) A(FF,A1,A1,A1) A(FF,9D,9D,9D) A(FF,99,99,99) 
					A(FF,97,97,97) A(FF,91,91,91) A(FF,8E,8E,8E) A(FF,8B,8B,8B) A(FF,86,86,86) A(FF,9A,9A,9D) A(FF,EE,EE,FF) A(FF,67,97,DB) A(FF,0E,5D,C3) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(FF,C7,D7,EF) A(FF,27,78,EF) A(FF,9A,BB,F8) A(FF,E8,E9,FF) A(FF,C9,C9,CF) A(FF,C6,C7,CD) A(FF,C5,C5,CB) A(FF,C1,C1,C8) A(FF,BF,BF,C6) 
					A(FF,BB,BC,C4) A(FF,B8,B9,C1) A(FF,B7,B7,C0) A(FF,B2,B3,BD) A(FF,B0,B1,BB) A(FF,AE,AF,B9) A(FF,AA,AB,B6) A(FF,B7,B8,C4) A(FF,EE,EE,FF) A(FF,67,98,DD) 
					A(FF,0D,5E,C6) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(FF,CA,D9,F0) A(FF,33,80,F0) A(FF,A5,C4,F9) A(FF,F2,F2,FF) A(FF,F0,F1,FF) A(FF,EF,F0,FF) A(FF,EF,EF,FF) 
					A(FF,ED,EE,FF) A(FF,EC,ED,FF) A(FF,EA,EB,FF) A(FF,E8,E9,FF) A(FF,E7,E8,FF) A(FF,E5,E7,FF) A(FF,E4,E6,FF) A(FF,E4,E5,FF) A(FF,E2,E4,FF) A(FF,E4,E6,FF) 
					A(FF,F0,F0,FF) A(FF,67,9A,E0) A(FF,0C,61,CC) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) ;
					memcpy ((EIF_NATURAL_32 *)$a_ptr + $a_offset, &l_data, sizeof l_data - 1);
				}
			}"
		end
	
	c_colors_2 (a_ptr: POINTER; a_offset: INTEGER)
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
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(FF,D0,DD,F0) A(FF,53,94,F2) A(FF,61,9B,F3) A(FF,6A,A0,F4) A(FF,58,96,F3) 
					A(FF,4F,8E,EB) A(FF,43,83,E1) A(FF,41,80,DC) A(FF,40,7E,D9) A(FF,3E,7A,D0) A(FF,3C,76,CA) A(FF,3B,74,C6) A(FF,39,71,C0) A(FF,38,72,C3) A(FF,3A,75,C7) 
					A(FF,38,77,CD) A(FF,38,78,CF) A(FF,39,7D,D6) A(FF,1D,6E,D4) A(FF,0B,64,D4) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(FF,D8,E1,F0) A(FF,79,AA,F2) A(FF,70,A4,F1) 
					A(FF,69,A0,F1) A(FF,58,96,F0) A(FF,50,8E,E8) A(FF,44,84,DE) A(FF,42,80,D9) A(FF,41,7F,D6) A(FF,3F,7B,CD) A(FF,3D,78,C7) A(FF,3C,76,C3) A(FF,3B,73,BD) 
					A(FF,3B,74,C0) A(FF,3C,77,C4) A(FF,3B,79,CA) A(FF,3A,7A,CC) A(FF,39,7D,D3) A(FF,38,7F,D8) A(FF,38,80,DB) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) ;
					memcpy ((EIF_NATURAL_32 *)$a_ptr + $a_offset, &l_data, sizeof l_data - 1);
				}
			}"
		end

	build_colors (a_ptr: POINTER)
			-- Build `colors'
		do
			c_colors_0 (a_ptr, 0)
			c_colors_1 (a_ptr, 400)
			c_colors_2 (a_ptr, 800)
		end

end