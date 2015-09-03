puts "What is your birthdate? Please use MMDDYYYY form!"
bdate = gets.chomp


bdate = bdate[0].to_i + bdate[1].to_i + bdate[2].to_i + bdate[3].to_i + bdate[4].to_i + bdate[5].to_i
bdate = bdate.to_i

if (bdate > 9)
	bdate.to_s
	bdate = bdate[0].to_i + bdate[1].to_i + bdate[2].to_i + bdate[3].to_i + bdate[4].to_i + bdate[5].to_i
	bdate = bdate.to_i
end

if (bdate > 9)
	bdate.to_s
	bdate = bdate[0].to_i + bdate[1].to_i + bdate[2].to_i + bdate[3].to_i + bdate[4].to_i + bdate[5].to_i
	bdate = bdate.to_i
end

if (bdate > 9)
	bdate.to_s
	bdate = bdate[0].to_i + bdate[1].to_i + bdate[2].to_i + bdate[3].to_i + bdate[4].to_i + bdate[5].to_i
	bdate = bdate.to_i
end


if (bdate > 9)
	bdate.to_s
	bdate = bdate[0].to_i + bdate[1].to_i + bdate[2].to_i + bdate[3].to_i + bdate[4].to_i + bdate[5].to_i
	bdate = bdate.to_i
end


puts "Your numerology number is #{bdate}"

case (bdate.to_s)
	when '1'
		puts "One is the leader. The number one indicates the ability to stand alone, and is a strong vibration. Ruled by the Sun."
	when '2'
		puts "This is the mediator and peace-lover. The number two indicates the desire for harmony. It is a gentle, considerate, and sensitive vibration. Ruled by the Moon."
	when '3'
		puts "Number Three is a sociable, friendly, and outgoing vibration. Kind, positive, and optimistic, Three's enjoy life and have a good sense of humor. Ruled by Jupiter."

	when '4'
		puts "This is the worker. Practical, with a love of detail, Fours are trustworthy, hard-working, and helpful. Ruled by Uranus."
	when '5'
		puts "This is the freedom lover. The number five is an intellectual vibration. These are 'idea' people with a love of variety and the ability to adapt to most situations. Ruled by Mercury."
	when '6'
		puts "This is the peace lover. The number six is a loving, stable, and harmonious vibration. Ruled by Venus."
	when '7'
		puts "This is the deep thinker. The number seven is a spiritual vibration. These people are not very attached to material things, are introspective, and generally quiet. Ruled by Neptune.

"
	when '8'
		puts "This is the manager. Number Eight is a strong, successful, and material vibration. Ruled by Saturn."
	when '9'
		puts "This is the teacher. Number Nine is a tolerant, somewhat impractical, and sympathetic vibration. Ruled by Mars."

end

