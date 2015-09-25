require 'sinatra'


def birth_num(bdate)
	bdate.to_s

	bdate = bdate[0].to_i + bdate[1].to_i + bdate[2].to_i + bdate[3].to_i + bdate[4].to_i + bdate[5].to_i + bdate[6].to_i + bdate[7].to_i

	puts "First round bdate #{bdate}"


	if (bdate.to_i > 9)
		bdate = bdate.to_s

		bdate = bdate[0].to_i + bdate[1].to_i
		bdate = bdate.to_i

		puts "Second round bdate #{bdate}"
	end

	if (bdate.to_i > 9)
		bdate = bdate.to_s

		bdate = bdate[0].to_i + bdate[1].to_i
		bdate = bdate.to_i

		puts "Third round bdate #{bdate}"
	end

	return bdate

end


def message(bdate)
	case (bdate.to_s)
		when '1'
			return "One is the leader. The number one indicates the ability to stand alone, and is a strong vibration. Ruled by the Sun."
		when '2'
			return "This is the mediator and peace-lover. The number two indicates the desire for harmony. It is a gentle, considerate, and sensitive vibration. Ruled by the Moon."
		when '3'
			return "Number Three is a sociable, friendly, and outgoing vibration. Kind, positive, and optimistic, Three's enjoy life and have a good sense of humor. Ruled by Jupiter."

		when '4'
			return "This is the worker. Practical, with a love of detail, Fours are trustworthy, hard-working, and helpful. Ruled by Uranus."
		when '5'
			return "This is the freedom lover. The number five is an intellectual vibration. These are 'idea' people with a love of variety and the ability to adapt to most situations. Ruled by Mercury."
		when '6'
			return "This is the peace lover. The number six is a loving, stable, and harmonious vibration. Ruled by Venus."
		when '7'
			return "This is the deep thinker. The number seven is a spiritual vibration. These people are not very attached to material things, are introspective, and generally quiet. Ruled by Neptune.

	"
		when '8'
			return "This is the manager. Number Eight is a strong, successful, and material vibration. Ruled by Saturn."
		when '9'
			return "This is the teacher. Number Nine is a tolerant, somewhat impractical, and sympathetic vibration. Ruled by Mars."

	end
end

get '/allpaths/' do
	erb :allpaths
end

get '/:birthdate' do
	
	@birthdate = params[:birthdate]
	
	@birth_path_num = birth_num(@birthdate)
	@birth_message = message(@birth_path_num)

	# "Your numerology number is #{birth_path_num}." + "\n" + birth_message

	erb :index

end



