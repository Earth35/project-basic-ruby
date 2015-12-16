def echo (string)
  string
end

def shout (string)
  string.upcase
end

def repeat (string, num=2)
  result = string
  (num-1).times do
    result += " #{string}"
  end
  return result
end

def start_of_word (string, num)
  string[0, num]
end

def first_word (string)
  string.split[0]
end

def titleize (string)
  words = string.split
  capitalized_words = []
  words.each do |item|
    if ["and", "the", "over"].include? item
	 capitalized_words.push(item)
	else
	  capitalized_words.push(item.capitalize)
	end
  end
  capitalized_words[0].capitalize!
  capitalized_words.join(" ")
end
