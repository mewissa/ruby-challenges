class Console

	def set_manufacturer=(manufacturer)
		@manufacturer = manufacturer
	end

	def get_manufacturer
		return @manufacturer
	end

	def set_games=(games)
		@games = games
	end

	def get_games
		return @games
	end

end

class Xbox < Console

	def buttons
		return "A, B, X, Y"
	end

end

class Playstation < Console

	def buttons
		return "Square, Triangle, X, Circle"
	end

end

my_xbox = Xbox.new
my_xbox.set_manufacturer= "Microsoft"
my_xbox.set_games= ["Mass Effect", "Assassin's Creed", "Portal", "Halo"]

my_ps3 = Playstation.new
my_ps3.set_manufacturer= "Sony"
my_ps3.set_games= "PSSSST. Melissa... You don't own a PS3!"

puts "My Xbox is made by #{my_xbox.get_manufacturer} and I have these games: #{my_xbox.get_games}. The main buttons are #{my_xbox.buttons}"
puts "My Playstation is made by #{my_ps3.get_manufacturer} and I have these games: #{my_ps3.get_games}. The main buttons are #{my_ps3.buttons}"

my_xbox.inspect
my_ps3.inspect