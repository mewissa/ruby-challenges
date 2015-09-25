require 'sinatra'

# From greeting.rb

def determine_current_hour
	current_time = Time.new
	current_hour = current_time.hour
end

=begin

def get_name
	puts "And who might you be?"
	user_name = gets.chomp
end

=end

def greeting
	
	# Normally, we use get_name to ask for name.
	user_name = "Melissa"
	
	current_hour = determine_current_hour

	if(current_hour > 3 && current_hour < 12)
		time = "morning"
	elsif(current_hour > 11 && current_hour < 18)
		time = "afternoon"
	elsif(current_hour > 17 || current_hour < 2)
		time = "evening"
	end

	return "Why hello there, #{user_name}! Top of the #{time} to you!"
end

the_greeting = greeting

get '/' do
	"#{the_greeting}"
end