
# a simple ruby guessing game

secret_word = "giraffe"
guess = ""
guess_count = 0
guess_limit = 3
out_of_guesses = false

while guess != secret_word && !out_of_guesses

    if guess_count < guess_limit
        puts "Enter guess: "
        guess = gets.chomp() # chomp gets rid of newline at the end of the input data
        guess_count += 1
    else
        out_of_guesses = true
    end

end

if out_of_guesses
    puts "lost"
else
    puts "Won!"
end