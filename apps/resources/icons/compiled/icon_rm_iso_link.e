note
	description: "Icon loader class generated by icondbc"
	keywords:    "Embedded icons"
	author:      "Thomas Beale <thomas.beale@oceaninformatics.com>"
	support:     "http://www.openehr.org/issues/browse/AWB"
	copyright:   "Copyright (c) 2013- Ocean Informatics Pty Ltd"
	license:     "Apache 2.0 License <http://www.apache.org/licenses/LICENSE-2.0.html>"

class ICON_RM_ISO_LINK

inherit
	ICON_SOURCE

create
	make

feature {NONE} -- Initialization

	make
			-- Initialization
		do
			key := "rm/iso/link"
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
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,1A) A(00,00,00,00) A(3B,90,A1,B7) A(50,8C,9F,B7) 
					A(47,9A,A9,BC) A(12,7C,8A,99) A(00,00,00,00) A(00,00,00,00) A(00,AE,B5,BE) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(38,3C,5D,86) A(FF,57,80,B1) A(FF,4E,72,9D) A(FF,4E,6F,98) A(FF,42,65,91) A(FF,40,65,91) A(FF,4C,71,9C) A(AA,3F,5A,79) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,FF,FF,FF) A(00,00,00,00) A(A8,7E,89,96) A(FF,80,83,85) 
					A(84,77,80,8A) A(00,00,00,00) A(3F,E1,E8,EF) A(4E,8D,9F,B1) A(CB,3A,54,74) A(FF,32,53,7D) A(00,FF,FF,FF) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(00,A1,A1,A1) A(00,00,00,00) A(C0,C3,C3,C3) A(FF,C8,C8,C8) A(FF,AA,AA,AA) A(82,74,74,74) A(00,89,89,89) A(00,00,00,00) A(24,BC,BC,BC) 
					A(7E,68,7A,91) A(FF,31,56,83) A(3F,9B,99,97) A(00,00,00,00) A(00,00,00,00) A(00,13,2B,4A) A(03,FF,FF,FF) A(11,2B,49,70) A(D0,CB,CB,CA) A(FE,C2,C2,C2) 
					A(FF,AA,AA,AA) A(FF,75,79,7E) A(00,00,00,00) A(00,00,00,00) A(FF,97,97,97) A(F5,CE,CE,CE) A(7E,30,51,79) A(FF,34,56,80) A(18,FF,FF,FF) A(00,00,00,00) 
					A(00,73,80,91) A(12,CD,D0,D3) A(FF,45,60,81) A(FF,80,92,A6) A(FE,CE,CE,CE) A(FF,AB,AB,AB) A(FF,74,78,7E) A(FF,34,58,83) A(FF,3C,61,8E) A(FF,57,7B,A7) 
					A(FD,94,93,90) A(FD,CE,CD,CC) A(FF,69,83,A4) A(FF,32,4A,68) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(BE,35,4B,66) A(D7,60,8B,BF) A(FF,C9,C7,C4) 
					A(FF,A7,A7,A7) A(FE,76,7D,86) A(7A,51,6E,8F) A(22,A3,B4,C7) A(7B,7D,8E,A3) A(7F,43,5B,76) A(C1,84,87,8B) A(FE,B3,B3,B3) A(F5,AF,B3,B7) A(2A,3D,54,6E) 
					A(01,4C,58,67) A(00,00,00,00) A(2B,80,8A,95) A(FF,4F,70,9A) A(69,74,8E,AE) A(60,8F,8F,8F) A(9F,98,96,94) A(FF,28,47,6B) A(94,4F,75,A2) A(00,00,00,00) 
					A(00,00,00,00) A(00,8E,BA,DF) A(66,9C,99,96) A(FF,A2,A2,A2) A(FF,C9,C7,C5) A(BA,5D,81,AC) A(11,7B,8F,A6) A(00,82,96,AE) A(98,2C,41,59) A(FF,5E,85,B3) 
					A(00,00,00,00) A(00,00,00,00) A(38,59,66,73) A(FF,48,6B,96) A(8A,48,6D,9B) A(00,00,00,00) A(00,00,00,00) A(3E,5D,6F,85) A(FF,33,59,86) A(FF,91,91,91) 
					A(FE,C4,C3,C3) A(FF,61,77,92) A(AB,5C,82,AF) A(00,00,00,00) A(E7,42,5B,79) A(A6,7B,9A,BC) A(00,00,00,00) A(00,00,00,00) A(A2,39,4D,65) A(FF,57,7F,B1) 
					A(49,B1,BC,C9) A(00,F4,F3,F2) A(00,00,00,00) A(83,71,82,9B) A(FF,32,56,83) A(B0,75,78,7D) A(E3,7C,7C,7C) A(AB,6C,7B,8E) A(FF,49,6E,9C) A(00,00,00,00) 
					A(FF,3A,55,75) A(FF,36,58,83) A(81,64,77,8E) A(66,8C,9A,AB) A(FF,40,5D,80) A(DE,72,96,C2) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(17,F7,FD,FF) 
					A(FF,44,65,8F) A(29,43,62,88) A(00,00,00,00) A(00,00,00,00) A(FF,4B,6A,91) A(69,55,73,98) A(B1,3F,50,66) A(FF,39,60,8F) A(FF,38,5E,8D) A(FF,35,59,85) 
					A(FF,63,8C,BD) A(37,73,8B,A7) A(00,D5,DC,E5) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(FF,50,6C,8D) A(92,5A,7C,A4) A(00,00,00,00) A(00,00,00,00) 
					A(FF,50,6A,88) A(A3,53,78,A7) A(00,00,00,00) A(7A,51,61,75) A(DB,4B,67,89) A(E6,5B,79,9F) A(47,6B,87,A9) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(92,49,5E,79) A(F1,59,7E,AB) A(00,00,00,00) A(00,00,00,00) A(E2,40,5B,7C) A(DE,51,75,A0) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(00,66,7C,95) A(00,AC,BA,CD) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(4D,6B,80,99) A(FF,4C,70,9B) 
					A(E5,64,86,AE) A(F5,46,66,8E) A(FD,39,5F,8D) A(F1,4C,69,8C) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(FF,42,5B,79) A(FF,31,51,7A) A(FF,29,44,66) A(B2,3B,4F,6A) A(31,9F,9C,9A) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(00,3B,53,6E) A(04,FF,FF,FF) A(18,50,51,51) A(00,00,00,00) A(00,00,00,00) A(00,79,7D,83) ;
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