note
	description: "Icon loader class generated by icondbc"
	keywords:    "Embedded icons"
	author:      "Thomas Beale <thomas.beale@oceaninformatics.com>"
	support:     "http://www.openehr.org/issues/browse/AWB"
	copyright:   "Copyright (c) 2013- Ocean Informatics Pty Ltd"
	license:     "See notice at bottom of class"

class ICON_RM_ISO_INT

inherit
	ICON_SOURCE

create
	make

feature {NONE} -- Initialization

	make
			-- Initialization
		do
			key := "rm/iso/int"
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
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,84,8B,97) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(5E,A4,73,90) A(FF,C2,34,3F) 
					A(C9,9D,4B,54) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(7C,98,61,75) A(F3,A8,24,2A) A(F4,AD,17,1C) A(C7,9A,31,35) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(00,DB,E1,EA) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(1A,98,B0,C7) 
					A(00,00,00,00) A(EB,AF,20,28) A(C7,9A,31,35) A(00,00,00,00) A(32,7D,A1,CD) A(94,5E,84,B3) A(9D,59,7C,A7) A(36,6D,87,A6) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(EB,AF,20,28) A(C7,99,31,35) A(04,FF,FF,FF) 
					A(FF,3F,62,8B) A(CE,43,62,86) A(FF,3D,60,8A) A(FF,39,5C,87) A(17,5E,5F,62) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(EB,AF,20,28) A(C7,99,32,36) A(00,00,00,00) A(1C,9D,AB,C0) A(00,00,00,00) A(80,47,66,8C) A(FF,3B,61,8F) 
					A(4E,50,5D,6C) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(EA,AE,21,29) 
					A(C4,96,34,37) A(00,00,00,00) A(00,8A,00,0B) A(00,00,00,00) A(C7,4B,6F,9B) A(FF,3A,59,7E) A(09,FF,FF,F0) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(73,8F,5A,6F) A(FF,BF,2D,34) A(FF,BE,0B,0C) A(FF,B7,11,14) A(FF,A6,2F,37) A(02,FF,FF,FF) A(70,5E,84,B1) 
					A(FF,37,5C,88) A(67,5B,6D,80) A(00,00,00,00) A(05,F2,F6,FF) A(50,81,A3,B2) A(51,81,9E,A7) A(00,00,00,00) A(00,61,75,77) A(00,00,00,00) A(12,93,AE,C8) 
					A(39,70,8F,AC) A(38,71,90,AD) A(38,73,90,AD) A(39,82,9B,B5) A(51,5E,85,B4) A(FF,3A,60,8C) A(8F,66,76,8A) A(00,00,00,00) A(19,94,A5,E4) A(FF,6F,8E,54) 
					A(FB,74,8C,4E) A(FF,77,93,3D) A(E7,66,7F,4E) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(1E,9E,AE,C2) 
					A(FF,3E,65,94) A(F6,4B,6C,93) A(99,57,81,B4) A(A3,5E,87,B8) A(69,57,72,93) A(3C,89,9A,A7) A(00,00,00,00) A(96,6E,87,66) A(FF,73,8D,3A) A(17,5C,5D,A0) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(14,92,A4,BB) A(AA,4C,68,8C) A(A3,4C,68,8A) A(A3,4D,69,8B) A(A3,4F,6B,8D) 
					A(63,61,75,8C) A(20,64,8D,B4) A(3E,6E,96,A6) A(E5,80,9D,62) A(E6,64,79,4C) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(00,AF,C5,DD) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(AB,79,92,74) A(F5,71,8B,4C) A(FF,6C,87,42) 
					A(B3,7B,95,75) A(00,FF,FF,FF) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(66,66,7D,74) A(FF,80,9D,3E) A(6E,57,68,52) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(39,83,9B,A0) A(59,73,91,88) 
					A(18,65,87,FF) A(92,75,96,7C) A(FF,7C,98,3A) A(64,63,6F,63) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(31,7B,90,98) A(FF,71,8A,4F) A(FF,6D,88,41) A(FF,71,8B,49) A(B1,6C,7F,62) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(11,FF,FF,FF) A(00,00,00,00) A(00,00,00,00) A(00,9B,AD,C1) ;
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