
# how to define functions or "methods" in ruby

# .def.ining a method/function block .name.

# "def" and "end" specify the method body
# "methodName" specifies the method name
def methodName

    puts "Hello User"
end

# call the function
puts "Top"
methodName()
puts "Bottom"


# specify another method that takes two arguments
# the arguments are specifed by the method parameters name (a string) and age (an integer)

#def methodName2(name, age)
def methodName2(name = "Fred", age=-1) # specifying default values for the method parameters

    puts "Hello " + name + " you are " + age.to_s
end

puts "Top2"
methodName2("Mike", 36)
methodName2()
puts "Bottom2"