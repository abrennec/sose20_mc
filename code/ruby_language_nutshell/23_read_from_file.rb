
# first way to handle a file
File.open("employees.txt", "r") do |file|

    #puts file
    #puts file.read()
    #puts "<<<<<"
    # puts file.readline()
    # puts file.readline()
    #puts file.readlines() # this call puts each line in an array
    #puts file.readlines()[index]

    for line in file.readlines()
        puts line
    end

end # tells ruby that we are done working with this file


# second way to handle a file
file = File.open("employees.txt", "r") 

puts file.read()

file.close() # tells ruby that we are done working with this file
