#!/bin/sh 
#	component:   "openEHR ADL Tools"
#	description: "Units Parser builder script"
#	keywords:    "units, parser"
#
#	author:      "Thomas Beale <thomas@deepthought.com.au>"
#	copyright:   "Copyright (c) 2005 Ocean Informatics"
#	licence:     "The Mozilla Tri-license"
#

geyacc --new_typing -v parser_errs.txt -t UNITS_TOKENS -o units_parser.e units_parser.y

geyacc --doc=html -v parser_errs.txt -t UNITS_TOKENS -o units_parser.html units_parser.y
