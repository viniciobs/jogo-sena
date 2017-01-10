def welcome
	puts 'Hello, be welcome to have fun Guessing numbers'
	puts 'How would you like to be called?'
	puts ''
	name = gets.strip
	name
end

def welcome_person name
	puts 'Have a great time, ' + name + '!'
	puts 'Let\'s begin...'
	puts ''
end	

def ask_numbers
	puts 'Now you\'ll choose six numbers'
	user_numbers = Array.new()
	counter = 0
	while counter < 6
		puts ''
		puts 'number ' + (counter + 1).to_s + ':'
		number_chosen = gets.strip.to_i
		number_chosen_is_valid = number_chosen > 0 && number_chosen <= 60 
		number_already_chosen = user_numbers.include? number_chosen 
		if number_chosen_is_valid && !number_already_chosen
			user_numbers << number_chosen
			counter += 1
		else
			if number_already_chosen
				puts 'This number is already inputed'
				puts 'try other'
				puts ''
			else
				puts 'Invalid number!'
				puts 'The number must be between 1 and 60'
				puts ''
			end
		end
		
	end
	user_numbers
end

def show_good_shots result
	puts ''
	puts 'You got ' + result.to_s + ' good shots'
	puts ''
end

def show_right_numbers right_numbers
	puts 'The numbers that matched:'
	puts right_numbers.sort.join(",")
end

def show_comparison numbers, user_numbers
	puts ''
	puts 'Generated numbers:'
	puts numbers.sort.join(",")
	puts ''
	puts 'Your numbers'
	puts user_numbers.sort.join(",")
end

def want_to_play?
	puts ''
	puts 'Do you want to play again? (y/n) ?'
	case gets.strip.downcase
	when 'y'
		return true
	when 'n' 
		return false
	else
		return false
	end
end

def bye_user name
	puts ''
	puts 'Bye, ' + name
end















