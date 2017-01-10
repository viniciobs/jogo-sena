def choose_numbers
	chosen_values = Array.new()
	counter = 0
	while counter < 6
		random_num = rand(60) + 1
		if !chosen_values.include? random_num
			chosen_values << random_num
			counter += 1
		end
	end
	chosen_values
end

def how_many_good_shots numbers, user_numbers
	rigth_shots = 0
	right_numbers = Array.new()
	for index in 0..6
		if numbers.include? user_numbers[index]
			rigth_shots += 1
			right_numbers << user_numbers[index]
		end
	end
	[rigth_shots, right_numbers]
end


