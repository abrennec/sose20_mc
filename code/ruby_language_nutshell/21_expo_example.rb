
# using for loops to calculate "power to" functionality

def pow(base_num, pow_num)
    result = 1
    pow_num.times do |index|  # |index| can also be removed
        result = result * base_num
    end

    return result
end

pow(2,3)