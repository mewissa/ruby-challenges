puts "Gimme numbers, yumyumyum!"
user_number = gets

user_number = user_number.to_i

new_number = user_number + 5
new_number *= 2
new_number -= 4
new_number /= 2
new_number -= user_number

puts "The new number is... #{new_number}!"