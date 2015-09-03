class Meal

	attr_writer :breakfast
	attr_reader :breakfast


	attr_accessor :lunch, :dinner

=begin
	def set_dinner=(dinner)
		@dinner = dinner
	end

	def get_dinner
		return @dinner
	end
=end
end

todays_meal = Meal.new

todays_meal.breakfast = "Peanut butter toast"
todays_meal.lunch = "Tandoori chicken"
todays_meal.dinner = "Tacos"

puts "Whoa! Today, you've eaten: #{todays_meal.breakfast} for breakfast, then some #{todays_meal.lunch}, and will later eat #{todays_meal.dinner} for dinner! Yummmmmmyyyy!"
