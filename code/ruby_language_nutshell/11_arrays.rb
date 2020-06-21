
# arrays and how to use them with ruby

friends = Array["mike", "kevin", "karen", "andy"]
              #    0       1        2
              #   -3      -2       -1

# arrays in ruby support different types of input:
mix = Array[2.4, "kevin", true] # float, string, bool type

puts friends
puts mix

# accessing array values
puts friends[2]
puts friends[-2]

# useful functions that can be called on arrays in ruby
puts friends.reverse()
puts friends.length()
puts friends.include? "karen"
puts friends.sort()

# changing elements of arrays at the specificed index [i]
friends[0] = "Dwight"

# specify a new array
friends2 = Array.new

# what is put into 1, 2, 3, 4 ???
friends2[0] = "Jack"
friends2[5] = "Lucy"

# find out with this command:
puts friends2