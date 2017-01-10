require_relative 'ui'
require_relative 'logic'

name = welcome
welcome_person name
loop do
	numbers = choose_numbers
	user_numbers = ask_numbers
	result = how_many_good_shots numbers, user_numbers
	quantity_good_shots = result[0]
	right_numbers = result[1]
	show_good_shots quantity_good_shots
	show_right_numbers right_numbers if quantity_good_shots > 0
	show_comparison numbers, user_numbers
 	break if !want_to_play?
 end
bye_user name
