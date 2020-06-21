# chomp gets rid of newline at the end of the input data

# in general, ruby converts all user input into a string type

puts "Enter a number: "
num1 = gets.chomp() # .to_f    # you may add .to_f to the function to convert the input into floating point

puts "Enter another number: "
num2 = gets.chomp() # .to_f  


# ruby converts all user input into a string type
# that is why this will not work
puts ("strings " + num1 + num2)

# we first have to convert
# the input data into a number
puts num1.to_i + num2.to_i # now ruby puts integers, no mixing with string possible
puts "numbers " + (num1.to_i + num2.to_i).to_s # now ruby puts strings