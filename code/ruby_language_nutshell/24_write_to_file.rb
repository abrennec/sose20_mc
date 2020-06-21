
# file modes: r read, w write, a append, b binary and many more and mixtures

File.open("employees.txt", "a") do |file|

    file.write("\nJack is a bad ass")
end


# if we use "w" as writing mode, everyrhing will be overwritten
# also, with w you can simply create a new file
File.open("new_file.txt", "w") do |file| 

    file.write("\nJack is a bad ass")
end

# creating a new html file
File.open("index.html", "w") do |file| 

    file.write("<h1>Hello</h1>")
end

# reading and writing a file with "r+"
File.open("employees2.txt", "r+") do |file| 
    file.readline() # reads the first line and moves "file cursor" to second line
    file.write("Hi") # writes to the second line in the file and moves cursor on
end