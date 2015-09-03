def determine_current_hour
	current_time = Time.new
	current_hour = current_time.hour
end

def get_name
	puts "And who might you be?"
	user_name = gets.chomp
end

def greeting
	user_name = get_name
	current_hour = determine_current_hour

	if(current_hour > 3 && current_hour < 12)
		time = "morning"
	elsif(current_hour > 11 && current_hour < 18)
		time = "afternoon"
	elsif(current_hour > 17 || current_hour < 2)
		time = "evening"
	end

	puts "Why hello there, #{user_name}! Top of the #{time} to you!"
end

greeting