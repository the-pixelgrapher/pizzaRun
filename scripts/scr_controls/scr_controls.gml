// keyboard control setup

key_left = max( keyboard_check(vk_left), keyboard_check(ord("A")) );
key_right = max( keyboard_check(vk_right), keyboard_check(ord("D")) );
key_up = max( keyboard_check(vk_up), keyboard_check(ord("W")) );
key_shift = keyboard_check(vk_shift);
key_down = max( keyboard_check(vk_down), keyboard_check(ord("S")) );
key_ctrl = max (keyboard_check(vk_control));
key_act = max( keyboard_check(vk_enter), keyboard_check(vk_space), keyboard_check(ord("E")) );
key_ability = max(keyboard_check(vk_control), keyboard_check(vk_alt) );

key_up_p = max( keyboard_check_pressed(vk_up), keyboard_check_pressed(ord("W")) );
key_down_p = max( keyboard_check_pressed(vk_down), keyboard_check_pressed(ord("S")) );
key_left_p = max( keyboard_check_pressed(vk_left), keyboard_check_pressed(ord("A")) );
key_right_p = max( keyboard_check_pressed(vk_right), keyboard_check_pressed(ord("D")) );
key_jump = max( keyboard_check_pressed(vk_space),keyboard_check_pressed(vk_up), keyboard_check_pressed(ord("W")) );
key_act_p = max ( keyboard_check_pressed(vk_space), keyboard_check_pressed(vk_enter), keyboard_check_pressed(ord("E")) );

key_act_r = key_act = max( keyboard_check_released(vk_enter), keyboard_check_released(vk_space) );
