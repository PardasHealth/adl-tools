note
	description: "Icon loader class generated by icondbc"
	keywords:    "Embedded icons"
	author:      "Thomas Beale <thomas.beale@oceaninformatics.com>"
	support:     "http://www.openehr.org/issues/browse/AWB"
	copyright:   "Copyright (c) 2013- Ocean Informatics Pty Ltd"
	license:     "Apache 2.0 License <http://www.apache.org/licenses/LICENSE-2.0.html>"

class ICON_RM_CEN_FOLDER

inherit
	ICON_SOURCE

create
	make

feature {NONE} -- Initialization

	make
			-- Initialization
		do
			key := "rm/cen/folder"
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
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(FF,3A,52,8A) A(FF,3A,52,8A) 
					A(FF,3A,52,8A) A(FF,3A,52,8A) A(FF,3A,52,8A) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(FF,3A,52,8A) A(FF,5D,8C,C9) A(FF,5D,8C,C9) A(FF,5D,8C,C9) A(FF,5D,8C,C9) A(FF,5D,8C,C9) A(FF,3A,52,8A) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(FF,3A,52,8A) A(FF,49,60,8A) 
					A(FF,49,60,8A) A(FF,49,60,8A) A(FF,49,60,8A) A(FF,49,60,8A) A(FF,49,60,8A) A(FF,49,60,8A) A(FF,3A,52,8A) A(FF,3A,52,8A) A(FF,3A,52,8A) A(FF,3A,52,8A) 
					A(FF,3A,52,8A) A(FF,3A,52,8A) A(00,00,00,00) A(00,00,00,00) A(FF,3A,52,8A) A(FF,5D,8C,C9) A(FF,5D,8C,C9) A(FF,5D,84,C9) A(FF,5D,8C,C9) A(FF,5D,8C,C9) 
					A(FF,5D,8C,C9) A(FF,5D,8C,C9) A(FF,5D,8C,C9) A(FF,5D,84,C9) A(FF,5D,84,C9) A(FF,5D,84,C9) A(FF,5D,7D,C5) A(FF,5D,7D,C5) A(FF,3A,3A,8A) A(00,00,00,00) 
					A(FF,3A,52,8A) A(FF,5D,8C,C9) A(FF,5D,8C,C9) A(FF,5D,8C,C9) A(FF,5D,84,C9) A(FF,5D,84,C9) A(FF,5D,84,C9) A(FF,5D,84,C9) A(FF,5D,84,C9) A(FF,5D,84,C9) 
					A(FF,5D,7D,C5) A(FF,5D,7D,C5) A(FF,5D,7D,C5) A(FF,5D,7D,C5) A(FF,3A,3A,8A) A(00,00,00,00) A(FF,3A,52,8A) A(FF,5D,8C,C9) A(FF,5D,84,C9) A(FF,5D,84,C9) 
					A(FF,5D,8C,C9) A(FF,5D,84,C9) A(FF,5D,84,C9) A(FF,5D,84,C9) A(FF,5D,84,C9) A(FF,5D,7D,C5) A(FF,5D,7D,C5) A(FF,5D,84,C9) A(FF,5D,7D,C5) A(FF,5D,7D,C5) 
					A(FF,3A,3A,8A) A(00,00,00,00) A(FF,3A,52,8A) A(FF,5D,84,C9) A(FF,5D,84,C9) A(FF,5D,84,C9) A(FF,5D,84,C9) A(FF,5D,84,C9) A(FF,5D,84,C9) A(FF,5D,84,C9) 
					A(FF,5D,7D,C5) A(FF,5D,84,C9) A(FF,5D,84,C9) A(FF,5D,7D,C5) A(FF,5D,7D,C5) A(FF,5D,7D,C5) A(FF,3A,3A,8A) A(00,00,00,00) A(FF,3A,52,8A) A(FF,5D,8C,C9) 
					A(FF,5D,84,C9) A(FF,5D,8C,C9) A(FF,5D,84,C9) A(FF,5D,84,C9) A(FF,5D,84,C9) A(FF,5D,7D,C5) A(FF,5D,7D,C5) A(FF,5D,7D,C5) A(FF,5D,7D,C5) A(FF,5D,84,C9) 
					A(FF,5D,7D,C5) A(FF,5D,7D,C5) A(FF,3A,3A,8A) A(00,00,00,00) A(FF,3A,52,8A) A(FF,5D,8C,C9) A(FF,5D,84,C9) A(FF,5D,84,C9) A(FF,5D,84,C9) A(FF,5D,84,C9) 
					A(FF,5D,84,C9) A(FF,5D,7D,C5) A(FF,5D,84,C9) A(FF,5D,84,C9) A(FF,5D,7D,C5) A(FF,5D,7D,C5) A(FF,5D,7D,C5) A(FF,5D,75,B2) A(FF,3A,3A,8A) A(00,00,00,00) 
					A(FF,3A,52,8A) A(FF,5D,8C,C9) A(FF,5D,84,C9) A(FF,5D,7D,C5) A(FF,5D,7D,C5) A(FF,5D,84,C9) A(FF,5D,7D,C5) A(FF,5D,84,C9) A(FF,5D,84,C9) A(FF,5D,7D,C5) 
					A(FF,5D,7D,C5) A(FF,5D,7D,C5) A(FF,5D,7D,C5) A(FF,5D,75,B2) A(FF,3A,3A,8A) A(00,00,00,00) A(FF,3A,52,8A) A(FF,5D,84,C9) A(FF,5D,84,C9) A(FF,5D,7D,C5) 
					A(FF,5D,84,C9) A(FF,5D,7D,C5) A(FF,5D,7D,C5) A(FF,5D,7D,C5) A(FF,5D,7D,C5) A(FF,5D,7D,C5) A(FF,5D,7D,C5) A(FF,5D,7D,C5) A(FF,5D,75,B2) A(FF,5D,7D,C5) 
					A(FF,3A,3A,8A) A(00,00,00,00) A(FF,3A,52,8A) A(FF,5D,84,C9) A(FF,5D,7D,C5) A(FF,5D,7D,C5) A(FF,5D,7D,C5) A(FF,5D,7D,C5) A(FF,5D,7D,C5) A(FF,5D,7D,C5) 
					A(FF,5D,75,B2) A(FF,5D,7D,C5) A(FF,5D,7D,C5) A(FF,5D,75,B2) A(FF,5D,7D,C5) A(FF,5D,75,B2) A(FF,3A,3A,8A) A(00,00,00,00) A(00,00,00,00) A(FF,3A,3A,8A) 
					A(FF,3A,3A,8A) A(FF,3A,3A,8A) A(FF,3A,3A,8A) A(FF,3A,3A,8A) A(FF,3A,3A,8A) A(FF,3A,3A,8A) A(FF,3A,3A,8A) A(FF,3A,3A,8A) A(FF,3A,3A,8A) A(FF,3A,3A,8A) 
					A(FF,3A,3A,8A) A(FF,3A,3A,8A) A(FF,3A,3A,8A) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
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