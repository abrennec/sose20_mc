
# ruby and for loops
# how to loop through an array

friends = ["Kevin", "Karen", "Oscar", "Petra", "Andy"]

# using an index variable "friend" that iterates through the array 
for friend in friends do
    puts friend
end


# same thing, different index varialbe 
for element in friends do
    puts element
end


# now the each method for each object in "friends"
friends.each do |friend|
    puts friend
end

friends.each do |element|
    puts element
end

# certain amounts of times
# for looping six times with index starting at 0 until 5
for index in 0..5 do
    puts index
end

# using num.times with index = 0 by default
6.times do |index|
    puts index
end