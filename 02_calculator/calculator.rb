def add (n1, n2)
  result = n1 + n2
  return result
end

def subtract (n1, n2)
  result = n1 - n2
  return result
end

def sum (numbers)
  result = 0
  numbers.each do |item|
    result += item
  end
  return result
end

def multiply (*numbers)
  if numbers.length < 2
    puts "Can't multiply less than 2 numbers."
  else
    result = 1
	numbers.each do |item|
	  result *= item
	end
	return result
  end
end

def power (number, power)
  return number ** power
end

def factorial (number)
  if number == 0
    return 1
  else
    result = 1
    number.times do |i|
	  result *= i + 1
	end
	return result
  end
end