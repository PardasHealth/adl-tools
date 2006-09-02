indexing
	description: "Objects that represent an EV_TITLED_WINDOW.%
		%The original version of this class was generated by EiffelBuild."
	date: "$Date$"
	revision: "$Revision$"

deferred class
	OPTION_DIALOG_IMP

inherit
	EV_TITLED_WINDOW
		redefine
			initialize, is_in_default_state
		end
			
	CONSTANTS
		undefine
			is_equal, default_create, copy
		end

-- This class is the implementation of an EV_TITLED_WINDOW generated by EiffelBuild.
-- You should not modify this code by hand, as it will be re-generated every time
-- modifications are made to the project.

feature {NONE}-- Initialization

	initialize is
			-- Initialize `Current'.
		do
			Precursor {EV_TITLED_WINDOW}
			initialize_constants
			
				-- Create all widgets.
			create l_ev_vertical_box_1
			create l_ev_label_1
			create l_ev_horizontal_box_1
			create l_ev_label_2
			create option_dialog_rep_path_edit
			create option_dialog_rep_path_button
			create l_ev_horizontal_box_2
			create l_ev_label_3
			create option_dialog_editor_command_edit
			create option_dialog_editor_command_button
			create l_ev_horizontal_box_3
			create l_ev_cell_1
			create option_dialog_ok_button
			create option_dialog_cancel_button
			
				-- Build_widget_structure.
			extend (l_ev_vertical_box_1)
			l_ev_vertical_box_1.extend (l_ev_label_1)
			l_ev_vertical_box_1.extend (l_ev_horizontal_box_1)
			l_ev_horizontal_box_1.extend (l_ev_label_2)
			l_ev_horizontal_box_1.extend (option_dialog_rep_path_edit)
			l_ev_horizontal_box_1.extend (option_dialog_rep_path_button)
			l_ev_vertical_box_1.extend (l_ev_horizontal_box_2)
			l_ev_horizontal_box_2.extend (l_ev_label_3)
			l_ev_horizontal_box_2.extend (option_dialog_editor_command_edit)
			l_ev_horizontal_box_2.extend (option_dialog_editor_command_button)
			l_ev_vertical_box_1.extend (l_ev_horizontal_box_3)
			l_ev_horizontal_box_3.extend (l_ev_cell_1)
			l_ev_horizontal_box_3.extend (option_dialog_ok_button)
			l_ev_horizontal_box_3.extend (option_dialog_cancel_button)
			
			l_ev_vertical_box_1.set_background_color (create {EV_COLOR}.make_with_8_bit_rgb (255, 255, 206))
			l_ev_vertical_box_1.disable_item_expand (l_ev_label_1)
			l_ev_vertical_box_1.disable_item_expand (l_ev_horizontal_box_1)
			l_ev_vertical_box_1.disable_item_expand (l_ev_horizontal_box_2)
			l_ev_vertical_box_1.disable_item_expand (l_ev_horizontal_box_3)
			l_ev_label_1.set_background_color (create {EV_COLOR}.make_with_8_bit_rgb (255, 255, 206))
			l_ev_label_1.set_text ("ADL Workbench resource settings")
			l_ev_horizontal_box_1.set_background_color (create {EV_COLOR}.make_with_8_bit_rgb (255, 255, 206))
			l_ev_horizontal_box_1.set_padding_width (15)
			l_ev_horizontal_box_1.set_border_width (10)
			l_ev_horizontal_box_1.disable_item_expand (option_dialog_rep_path_edit)
			l_ev_horizontal_box_1.disable_item_expand (option_dialog_rep_path_button)
			l_ev_label_2.set_background_color (create {EV_COLOR}.make_with_8_bit_rgb (255, 255, 206))
			l_ev_label_2.set_text ("Repository path")
			option_dialog_rep_path_edit.set_minimum_width (300)
			option_dialog_rep_path_button.set_background_color (button_colour)
			option_dialog_rep_path_button.set_text ("browse...")
			option_dialog_rep_path_button.set_minimum_width (50)
			l_ev_horizontal_box_2.set_background_color (create {EV_COLOR}.make_with_8_bit_rgb (255, 255, 206))
			l_ev_horizontal_box_2.set_padding_width (15)
			l_ev_horizontal_box_2.set_border_width (10)
			l_ev_horizontal_box_2.disable_item_expand (option_dialog_editor_command_edit)
			l_ev_horizontal_box_2.disable_item_expand (option_dialog_editor_command_button)
			l_ev_label_3.set_background_color (create {EV_COLOR}.make_with_8_bit_rgb (255, 255, 206))
			l_ev_label_3.set_text ("Editor")
			option_dialog_editor_command_edit.set_minimum_width (300)
			option_dialog_editor_command_button.set_background_color (button_colour)
			option_dialog_editor_command_button.set_text ("browse...")
			option_dialog_editor_command_button.set_minimum_width (50)
			l_ev_horizontal_box_3.set_background_color (create {EV_COLOR}.make_with_8_bit_rgb (255, 255, 206))
			l_ev_horizontal_box_3.set_padding_width (15)
			l_ev_horizontal_box_3.set_border_width (10)
			l_ev_horizontal_box_3.disable_item_expand (option_dialog_ok_button)
			l_ev_horizontal_box_3.disable_item_expand (option_dialog_cancel_button)
			l_ev_cell_1.set_background_color (create {EV_COLOR}.make_with_8_bit_rgb (255, 255, 206))
			option_dialog_ok_button.set_background_color (button_colour)
			option_dialog_ok_button.set_text ("Ok")
			option_dialog_ok_button.set_minimum_width (100)
			option_dialog_cancel_button.set_background_color (button_colour)
			option_dialog_cancel_button.set_text ("Cancel")
			option_dialog_cancel_button.set_minimum_width (100)
			set_background_color (create {EV_COLOR}.make_with_8_bit_rgb (255, 255, 206))
			disable_user_resize
			set_title ("ADL workbench options")
			
				--Connect events.
			option_dialog_rep_path_edit.return_actions.extend (agent option_dialog_ok)
			option_dialog_rep_path_button.select_actions.extend (agent get_rep_path_directory)
			option_dialog_editor_command_edit.return_actions.extend (agent option_dialog_ok)
			option_dialog_editor_command_button.select_actions.extend (agent get_editor_command_directory)
			option_dialog_ok_button.select_actions.extend (agent option_dialog_ok)
			option_dialog_cancel_button.select_actions.extend (agent option_dialog_cancel)
				-- Close the application when an interface close
				-- request is recieved on `Current'. i.e. the cross is clicked.

				-- Call `user_initialization'.
			user_initialization
		end

feature -- Access

	l_ev_cell_1: EV_CELL
	option_dialog_rep_path_button, option_dialog_editor_command_button,
	option_dialog_ok_button, option_dialog_cancel_button: EV_BUTTON
	l_ev_horizontal_box_1, l_ev_horizontal_box_2,
	l_ev_horizontal_box_3: EV_HORIZONTAL_BOX
	l_ev_vertical_box_1: EV_VERTICAL_BOX
	l_ev_label_1, l_ev_label_2, l_ev_label_3: EV_LABEL
	option_dialog_rep_path_edit,
	option_dialog_editor_command_edit: EV_TEXT_FIELD

feature {NONE} -- Implementation

	is_in_default_state: BOOLEAN is
			-- Is `Current' in its default state?
		do
			-- Re-implement if you wish to enable checking
			-- for `Current'.
			Result := True
		end
	
	user_initialization is
			-- Feature for custom initialization, called at end of `initialize'.
		deferred
		end
	
	option_dialog_ok is
			-- Called by `return_actions' of `option_dialog_rep_path_edit'.
		deferred
		end
	
	get_rep_path_directory is
			-- Called by `select_actions' of `option_dialog_rep_path_button'.
		deferred
		end
	
	get_editor_command_directory is
			-- Called by `select_actions' of `option_dialog_editor_command_button'.
		deferred
		end
	
	option_dialog_cancel is
			-- Called by `select_actions' of `option_dialog_cancel_button'.
		deferred
		end
	

end -- class OPTION_DIALOG_IMP
