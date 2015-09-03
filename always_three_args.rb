puts "Gimme numbers, yumyumyum!"
user_number = gets.to_i

def always_three(num)
	puts "The new number is... " + ( ( ( ( ( (num + 5) * 2 ) - 4 ) )/2 ) - num).to_s + "!"
end

always_three(user_number)