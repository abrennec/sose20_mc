
# Ring structure that is simply iterated using the tick method
# You can see the additional parameter "release" that is handed over
# to the play method. We will learn about the additional parameters
# later on. release is used to specify how long the note will be played back. 

loop do
  play (ring 60, 62, 64, 65, 67, 69, 71, 72).tick, release: 0.1
  sleep 0.25
end