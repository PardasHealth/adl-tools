note
	component:   "openEHR ADL Tools"
	description: "Shared access to ADL15_ENGINE"
	keywords:    "ADL, parser, serialiser"
	author:      "Thomas Beale <thomas.beale@openehr.org>"
	support:     "http://www.openehr.org/issues/browse/AWB"
	copyright:   "Copyright (c) 2009- openEHR Foundation <http://www.openehr.org>"
	license:     "Apache 2.0 License <http://www.apache.org/licenses/LICENSE-2.0.html>"


class SHARED_ADL_ENGINE

feature {NONE} -- Implementation

	adl_2_engine: ADL_2_ENGINE
		once
			create Result.make
		end

	adl_14_engine: ADL_14_ENGINE
		once
			create Result.make
		end

	adl_14_2_rewriter: ADL_14_2_REWRITER
		once
			create Result.make
		end

end


