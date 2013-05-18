note
	description: "Icon loader class generated by icondbc"
	keywords:    "Embedded icons"
	author:      "Thomas Beale <thomas.beale@oceaninformatics.com>"
	support:     "http://www.openehr.org/issues/browse/AWB"
	copyright:   "Copyright (c) 2013- Ocean Informatics Pty Ltd"
	license:     "Apache 2.0 License <http://www.apache.org/licenses/LICENSE-2.0.html>"

class ICON_AM_REDEFINED_C_ATTRIBUTE

inherit
	ICON_SOURCE

create
	make

feature {NONE} -- Initialization

	make
			-- Initialization
		do
			key := "am/redefined/c_attribute"
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
					A(FF,FF,FF,00) A(FF,FF,FF,00) A(FF,FF,FF,00) A(FF,FF,FF,00) A(FF,FF,FF,00) A(FF,FF,FF,00) A(FF,FF,FF,00) A(FF,FF,FF,00) A(FF,FF,FF,00) A(FF,FF,FF,00) 
					A(FF,FF,FF,00) A(FF,FF,FF,00) A(FF,FF,FF,00) A(FF,FF,FF,00) A(FF,FF,FF,00) A(FF,FF,FF,00) A(FF,FF,FF,00) A(FF,FF,FF,00) A(FF,FF,FF,00) A(FF,FF,FF,00) 
					A(FF,FF,FF,00) A(FF,FF,FF,00) A(FF,FF,FF,00) A(FF,FF,FF,00) A(FF,FF,FF,00) A(FF,FF,FF,00) A(FF,FF,FF,00) A(FF,FF,FF,00) A(FF,FF,FF,00) A(FF,FF,FF,00) 
					A(FF,FF,FF,00) A(FF,FF,FF,00) A(FF,FF,FF,00) A(FF,FF,FF,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(FF,FF,FF,00) A(FF,FF,FF,00) A(FF,FF,FF,00) A(FF,FF,FF,00) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(FF,FF,FF,00) A(FF,FF,FF,00) A(FF,FF,FF,00) A(FF,FF,FF,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(FF,FF,FF,00) A(FF,FF,FF,00) 
					A(FF,FF,FF,00) A(FF,FF,FF,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(FF,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(FF,FF,FF,00) A(FF,FF,FF,00) A(FF,FF,FF,00) A(FF,FF,FF,00) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(FF,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(FF,FF,FF,00) A(FF,FF,FF,00) A(FF,FF,FF,00) A(FF,FF,FF,00) A(00,00,00,00) A(FF,00,00,00) A(FF,00,00,00) A(FF,00,00,00) A(FF,00,00,00) A(FF,00,00,00) 
					A(FF,00,00,00) A(FF,00,00,00) A(FF,00,00,00) A(FF,00,00,00) A(FF,00,00,00) A(00,00,00,00) A(FF,FF,FF,00) A(FF,FF,FF,00) A(FF,FF,FF,00) A(FF,FF,FF,00) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(FF,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(FF,FF,FF,00) A(FF,FF,FF,00) A(FF,FF,FF,00) A(FF,FF,FF,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(FF,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(FF,FF,FF,00) A(FF,FF,FF,00) 
					A(FF,FF,FF,00) A(FF,FF,FF,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(FF,FF,FF,00) A(FF,FF,FF,00) A(FF,FF,FF,00) A(FF,FF,FF,00) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(FF,FF,FF,00) A(FF,FF,FF,00) A(FF,FF,FF,00) A(FF,FF,FF,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(FF,FF,FF,00) A(FF,FF,FF,00) A(FF,FF,FF,00) A(FF,FF,FF,00) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(FF,FF,FF,00) A(FF,FF,FF,00) A(FF,FF,FF,00) A(FF,FF,FF,00) A(FF,FF,FF,00) A(FF,FF,FF,00) A(FF,FF,FF,00) A(FF,FF,FF,00) 
					A(FF,FF,FF,00) A(FF,FF,FF,00) A(FF,FF,FF,00) A(FF,FF,FF,00) A(FF,FF,FF,00) A(FF,FF,FF,00) A(FF,FF,FF,00) A(FF,FF,FF,00) A(FF,FF,FF,00) A(FF,FF,FF,00) 
					A(FF,FF,FF,00) A(FF,FF,FF,00) A(FF,FF,FF,00) A(FF,FF,FF,00) A(FF,FF,FF,00) A(FF,FF,FF,00) A(FF,FF,FF,00) A(FF,FF,FF,00) A(FF,FF,FF,00) A(FF,FF,FF,00) 
					A(FF,FF,FF,00) A(FF,FF,FF,00) A(FF,FF,FF,00) A(FF,FF,FF,00) A(FF,FF,FF,00) A(FF,FF,FF,00) ;
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