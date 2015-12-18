class Book
  attr_reader :title
  
  def title=(string)
    words = string.split(" ")
	exceptions = ["and", "in", "of", "the", "a", "an"]
	words.first.capitalize!
	words.map do |x|
      if !exceptions.include? x
	    x.capitalize!
	  end
	end
	@title = words.join(" ")
  end

end