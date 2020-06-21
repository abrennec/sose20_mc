

lucky_nums = [4, 8, 15, 16, 23, 24]

#lucky_nums["dogs"]

begin
    lucky_nums["dogs"]
    num = 10 / 0
rescue => exception
    puts "Errors" # catches any error that gets thrown
end


# to specify specific error blocks for specific exceptions
begin
    lucky_nums["dogs"]
    num = 10 / 0
rescue ZeroDivisionError # this is the error message that gets thrown in the case of 10/0 
    puts "Division by zero error" # catches any error that gets thrown
rescue TypeError
    puts "wrong type"
end


# store the error that was thrown in a variable
begin
    lucky_nums["dogs"]
    num = 10 / 0
rescue ZeroDivisionError # this is the error message that gets thrown in the case of 10/0 
    puts "Division by zero error" # catches any error that gets thrown
rescue TypeError => e # this message contains usually specific info on the error
    puts e
end