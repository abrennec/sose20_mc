
# global variable in ruby
$count = 0

testvar = play 67

# function definition in ruby
def verse
  8.times do
    var = (scale :c3, :major)
    count = (inc count) # local variable!!
    #puts var[count]
    count
    #play_pattern var
    play var.pick
    sleep 0.2
    #count += 1
    
    #  if (count == 8)
    #    sleep 0.12
    #  end
    
  end
end


def intro
  
  puts $count
  play 56
end


# composition

intro()
sleep 0.3
verse()
sleep 0.25
verse()


