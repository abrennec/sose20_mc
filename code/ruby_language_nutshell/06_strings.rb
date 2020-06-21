
# ruby provides several methods to manipulate strings
# more info by searching for "ruby string methods"

phrase = " giraffe Academy " 

puts phrase.upcase()

puts phrase.downcase()

puts phrase.strip()

puts phrase.length()

puts phrase.include? "Academy"
puts phrase.include? "mike"

puts phrase[5]

puts phrase[0, 4] # ending at 4, not including 4

puts phrase.index("A")

puts "programming".upcase