note
	component:   "openEHR ADL Tools"
	description: "Editor context for an ASSERTION. One will be needed for each ASSERTION in an archetype."
	keywords:    "archetype, editing"
	author:      "Thomas Beale <thomas.beale@oceaninformatics.com>"
	support:     "http://www.openehr.org/issues/browse/AWB"
	copyright:   "Copyright (c) 2012- Ocean Informatics Pty Ltd <http://www.oceaninfomatics.com>"
	license:     "Apache 2.0 License <http://www.apache.org/licenses/LICENSE-2.0.html>"

class ASSERTION_ED_CONTEXT

inherit
	EXPR_ITEM_ED_CONTEXT
		redefine
			arch_node, prepare_display_in_grid, display_in_grid
		end

create
	make

feature -- Access

	arch_node: detachable ASSERTION
			-- assertion being edited

	expression_context: detachable EXPR_ITEM_ED_CONTEXT
			-- the editor context for `arch_node'.expression

feature -- Display

	prepare_display_in_grid (a_gui_grid: EVX_GRID)
		do
			gui_grid := a_gui_grid

			-- create a new row
			gui_grid.add_row (arch_node)
			gui_grid_row := gui_grid.last_row

			expression_context.prepare_display_in_grid (gui_grid)
		end

	display_in_grid (ui_settings: GUI_DEFINITION_SETTINGS)
		local
			s: STRING
		do
			precursor (ui_settings)
			expression_context.display_in_grid (ui_settings)

			create s.make_empty
			if attached arch_node.tag then
				s.append (arch_node.tag)
			end
			gui_grid.set_last_row (gui_grid_row)
			gui_grid.set_last_row_label_col (rules_grid_col_expr_type, s, Void, c_meaning_colour, c_pixmap)
			gui_grid.set_last_row_label_col (rules_grid_col_expr_value, meaning, Void, c_meaning_colour, Void)
		end

feature -- Modification

	set_expression_context (an_ed_context: like expression_context)
		do
			expression_context := an_ed_context
			expression_context.set_parent (Current)
		end

feature {EXPR_ITEM_ED_CONTEXT} -- Implementation

	meaning: STRING
			-- generate useful string representatoin for meaning column
		do
			create Result.make_empty
			Result.append (expression_context.meaning)
		end

	c_pixmap: EV_PIXMAP
		do
			Result := get_icon_pixmap (Pixmap_path + "operators" + resource_path_separator + "assertion")
		end

end


