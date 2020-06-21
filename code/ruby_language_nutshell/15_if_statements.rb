
# specifying if and elsif and else statements

ismale = false
istall = true

if ismale 
    puts "you are male"
else
    puts "you are female"    
end

if ismale or istall
    puts "test"
elsif !ismale and istall
    puts "test2"
end


def max(num1, num2, num3)
# == != > < >= <=
    if num1 >= num2 and num1 >= num3
        return num1
    elsif num2 >= num1 and num2 >= num3
        return num2
    else 
        return num3
    end
end

puts max(1, 2, 3)