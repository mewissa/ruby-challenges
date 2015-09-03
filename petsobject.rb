# Errors: There were missing underscores, "Chinchilla" was spelled incorrectly,
# the Ferret class was not capitalized, a few "ends" were missing, one get_name 
# was also missing.. I probably should have noted the errors as I corrected them
# instead of trying to recall them afterwards! It works now though!

class Ferret
 
	def set_name= (ferret_name)
		@name = ferret_name
	end
 
	def get_name
		return @name
	end
 
	def set_owner=(owner_name)
		@owner_name = owner_name
	end
 
	def get_owner
		return @owner_name
	end
 
	def squeal
		return "squeeeeee"
	end
 
end
 
class Chinchilla
 
	def set_name=(chinchilla_name)
		@name = chinchilla_name
	end

	def get_name
		return @name
	end
 
	def set_owner=(owner_name)
		@owner_name = owner_name
	end
 
	def get_owner
		return @owner_name
	end
 
	def squeek
		return "eeeep"
	end
 
end
 
class Parrot
 
	def set_name=(parrot_name)
		@name = parrot_name
	end
 
	def get_name
		return @name
	end
 
	def set_owner=(owner_name)
		@owner_name = owner_name
	end
 
	def get_owner
		return @owner_name
	end

	def tweet
		return "chiiiiirp"
 	end

end

# Removed assigning names to more variables.
 
my_ferret = Ferret.new
my_ferret.set_name= "Fredo"
 
my_parrot = Parrot.new
my_parrot.set_name= "Budgie"
 
my_chinchilla = Chinchilla.new
my_chinchilla.set_name= "Dali"

# Referenced the instance variables directly.
 
puts "#{my_ferret.get_name} says #{my_ferret.squeal}, 
#{my_parrot.get_name} says #{my_parrot.tweet}, 
and #{my_chinchilla.get_name} says #{my_chinchilla.squeek}."
 
puts my_ferret.inspect
puts my_parrot.inspect
puts my_chinchilla.inspect