note
	component:   "openEHR ADL Tools"
	description: "Agents required to specify definition tree context menu actions"
	keywords:    "archetype, definition, gui"
	author:      "Thomas Beale"
	support:     "http://www.openehr.org/issues/browse/AWBPR"
	copyright:   "Copyright (c) 2012 Ocean Informatics Pty Ltd"
	license:     "Apache 2.0 License <http://www.apache.org/licenses/LICENSE-2.0.html>"

class GUI_ARCHETYPE_TOOL_AGENTS

feature -- Access

	path_select_action_agent: detachable PROCEDURE [ANY, TUPLE [STRING]]

	code_select_action_agent: detachable PROCEDURE [ANY, TUPLE [STRING]]

feature -- Modification

	set_code_select_action_agent (agt: like code_select_action_agent)
		do
			code_select_action_agent := agt
		end

	set_path_select_action_agent (agt: like path_select_action_agent)
		do
			path_select_action_agent := agt
		end

end


