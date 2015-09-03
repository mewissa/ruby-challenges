def always_three
	puts "Gimme numbers, yumyumyum!"
	user_number = gets.to_i

	puts "The new number is... " + ( ( ( ( ( (user_number + 5) * 2 ) - 4 ) )/2 ) - user_number).to_s + "!"

end

always_three