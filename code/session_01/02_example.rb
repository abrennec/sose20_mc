

=begin
this is a long comment
that spans over multiple
lines
=end

use_synth :piano

melody = [56, 77, 58, 45, 67]

# Which play call to use? What is the difference ?

loop do
  #  play melody
  #  play melody.tick
  sleep 0.24
end


print "Hello" # does not start a new line
puts "This is my #{melody}" # does start a new line