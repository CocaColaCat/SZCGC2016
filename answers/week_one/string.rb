str = "Ruby is an object oriented programming language"
words = str.split
puts words
puts words.sort
puts words.map { |word| word.capitalize }.join(" ")
