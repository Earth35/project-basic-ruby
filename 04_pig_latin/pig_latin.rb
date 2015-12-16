def translate (s)
  a = s.split(" ")	# split initial string into separate words
  result = []
  a.each do |s|	#translate each word, take capitalization and punctuation into account
      is_capitalized = false
	  punctuation = ""	# retain punctuation
	  letters = s.split(//)
	  if letters.last =~ /[[:punct:]]/  # check if commas, periods, colons, semicolons, etc. are present
	    punctuation = letters.pop
	  end
	  first_letter = letters[0]
	  if first_letter =~ /[[:upper:]]/  # check capitalization
	    is_capitalized = true
		first_letter.downcase!
	  end
	  if first_letter =~ /o|a|i|u|e/
		result.push(letters.join + "ay" + punctuation)
	  else
		leading_consonants = []
		index = 0
		last_letter = ""
		while index == 0	# check letters by shifting the array and add leading consonants; break the loop when a vowel is encountered
		  current = letters[index]
		  if current !~ /o|a|i|u|e/
			leading_consonants.push(letters.shift)
			last_letter = current
		  else
		    if last_letter == "q" && current == "u"	# check for 'qu', don't break the loop
			  last_letter = current
			  leading_consonants.push(letters.shift)
			else
			  index += 1  # vowel parsed - break the loop
			end
		  end
		end
		if is_capitalized
		  letters.first.upcase!	# retain capitalization
		end
		result.push(letters.join + leading_consonants.join + "ay" + punctuation)
	  end
  end
  return result.join(" ")
end
