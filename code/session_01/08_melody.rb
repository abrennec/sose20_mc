
# Ring structure that is simply iterated using the tick method
# You can see the additional parameter "release" that is handed over
# to the play method. We will learn about the additional parameters
# later on. release is used to specify how long the note will be played back.

9.times do
  play (ring 60, 62, 64).tick, release: 0.1
  sleep 0.25
end

9.times do
  play (ring 60, 62, 65).tick, release: 0.1
  sleep 0.25
end

3.times do
  play (ring 60, 62, 71).tick, release: 0.1
  sleep 0.25
end

3.times do
  play (ring 60, 62, 69).tick, release: 0.1
  sleep 0.25
end

3.times do
  play (ring 60, 62, 67).tick, release: 0.1
  sleep 0.25
end