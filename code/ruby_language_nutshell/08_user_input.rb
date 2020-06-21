
# "gets" is the counterpart to "puts"
# it reads data from the command line

puts "Enter your name: "
name = gets

puts ("Hello " + name + ", you are cool")


puts "\n Enter your name: "
name = gets.chomp()  # chomp gets rid of newline at the end of the input data

puts ("Hello " + name + ", you are cool")