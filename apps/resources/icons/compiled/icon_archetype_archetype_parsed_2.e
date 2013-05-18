note
	description: "Icon loader class generated by icondbc"
	keywords:    "Embedded icons"
	author:      "Thomas Beale <thomas.beale@oceaninformatics.com>"
	support:     "http://www.openehr.org/issues/browse/AWB"
	copyright:   "Copyright (c) 2013- Ocean Informatics Pty Ltd"
	license:     "Apache 2.0 License <http://www.apache.org/licenses/LICENSE-2.0.html>"

class ICON_ARCHETYPE_ARCHETYPE_PARSED_2

inherit
	ICON_SOURCE

create
	make

feature {NONE} -- Initialization

	make
			-- Initialization
		do
			key := "archetype/archetype_parsed_2"
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
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(FF,09,8B,32) A(FF,07,93,35) A(FF,05,9F,38) A(FF,04,A6,3A) A(FF,CA,68,54) 
					A(FF,FF,C7,00) A(FF,FF,C7,00) A(FF,FF,C7,00) A(FF,CA,68,54) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(FF,0A,82,30) 
					A(FF,09,8B,32) A(FF,07,93,35) A(FF,05,9F,38) A(FF,04,A6,3A) A(FF,FC,95,00) A(FF,FF,C7,00) A(FF,FF,C7,00) A(FF,FF,C7,00) A(FF,FF,C7,00) A(FF,FC,95,00) 
					A(FF,FC,95,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(FF,0A,82,30) A(FF,09,8B,32) A(FF,07,93,35) A(FF,05,9F,38) A(FF,04,A6,3A) A(FF,CA,68,54) 
					A(FF,FF,C7,00) A(FF,FF,C7,00) A(FF,FF,C7,00) A(FF,FF,C7,00) A(FF,FC,95,00) A(FF,FC,95,00) A(FF,FC,95,00) A(FF,CA,68,54) A(00,00,00,00) A(FF,0A,82,30) 
					A(FF,09,8B,32) A(FF,07,93,35) A(FF,05,9F,38) A(FF,04,A6,3A) A(FF,03,AF,3C) A(FF,FF,C7,00) A(FF,FF,C7,00) A(FF,FF,C7,00) A(FF,FF,C7,00) A(FF,FC,95,00) 
					A(FF,FC,95,00) A(FF,FC,95,00) A(FF,FC,95,00) A(FF,FC,95,00) A(00,00,00,00) A(FF,09,8B,32) A(FF,07,93,35) A(FF,05,9F,38) A(FF,04,A6,3A) A(FF,03,AF,3C) 
					A(FF,FF,FF,FF) A(FF,FF,C7,00) A(FF,FC,95,00) A(FF,FC,95,00) A(FF,FC,95,00) A(FF,FC,95,00) A(FF,FC,95,00) A(FF,FC,95,00) A(FF,FC,95,00) A(FF,FC,95,00) 
					A(FF,09,8B,32) A(FF,07,93,35) A(FF,05,9F,38) A(FF,04,A6,3A) A(FF,03,AF,3C) A(FF,03,AD,3B) A(FF,FF,FF,FF) A(FF,FF,C7,00) A(FF,FC,95,00) A(FF,FC,95,00) 
					A(FF,FC,95,00) A(FF,FC,95,00) A(FF,FC,95,00) A(FF,FC,95,00) A(FF,FC,95,00) A(FF,FC,95,00) A(FF,07,93,35) A(FF,05,9F,38) A(FF,04,A6,3A) A(FF,03,AF,3C) 
					A(FF,03,AD,3B) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,CA,68,54) A(FF,FF,C7,00) A(FF,FC,95,00) A(FF,FC,95,00) A(FF,FC,95,00) A(FF,FC,95,00) A(FF,FC,95,00) 
					A(FF,FC,95,00) A(FF,CA,68,54) A(FF,05,9F,38) A(FF,04,A6,3A) A(FF,03,AF,3C) A(FF,03,AD,3B) A(FF,03,A7,39) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,03,9F,36) 
					A(FF,FF,C7,00) A(FF,FF,C7,00) A(FF,FF,C7,00) A(FF,FC,95,00) A(FF,FC,95,00) A(FF,FC,95,00) A(FF,FC,95,00) A(FF,02,86,2E) A(FF,04,A6,3A) A(FF,03,AF,3C) 
					A(FF,03,AD,3B) A(FF,03,A7,39) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,CA,68,54) A(FF,FC,95,00) A(FF,FC,95,00) 
					A(FF,FC,95,00) A(FF,CA,68,54) A(FF,02,86,2E) A(FF,03,85,2E) A(FF,03,AF,3C) A(FF,03,AD,3B) A(FF,03,A7,39) A(FF,03,A5,38) A(FF,FF,FF,FF) A(FF,FF,FF,FF) 
					A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,02,88,2E) A(FF,02,86,2E) A(FF,03,85,2E) A(FF,03,85,2E) 
					A(FF,03,AD,3B) A(FF,03,A7,39) A(FF,03,A5,38) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,02,98,34) A(FF,02,96,33) A(FF,02,90,31) A(FF,02,8E,30) 
					A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,03,85,2E) A(FF,03,85,2E) A(FF,03,83,2D) A(00,00,00,00) A(FF,03,A5,38) A(FF,03,A1,37) A(FF,FF,FF,FF) 
					A(FF,FF,FF,FF) A(FF,02,98,34) A(FF,02,96,33) A(FF,02,90,31) A(FF,02,8E,30) A(FF,02,8A,2F) A(FF,02,88,2E) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,03,85,2E) 
					A(FF,03,83,2D) A(00,00,00,00) A(00,00,00,00) A(FF,03,A1,37) A(FF,03,9F,36) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,02,96,33) A(FF,02,90,31) A(FF,02,8E,30) 
					A(FF,02,8A,2F) A(FF,02,88,2E) A(FF,02,86,2E) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,03,83,2D) A(FF,03,83,2D) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,02,8E,30) A(FF,02,8A,2F) A(FF,02,88,2E) A(FF,02,86,2E) A(FF,FF,FF,FF) A(FF,FF,FF,FF) 
					A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(FF,02,96,33) A(FF,02,90,31) A(FF,02,8E,30) 
					A(FF,02,8A,2F) A(FF,02,88,2E) A(FF,02,86,2E) A(FF,03,85,2E) A(FF,03,85,2E) A(FF,03,83,2D) A(FF,03,83,2D) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(FF,02,8A,2F) A(FF,02,88,2E) A(FF,02,86,2E) A(FF,03,85,2E) A(FF,03,85,2E) 
					A(FF,03,83,2D) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) ;
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