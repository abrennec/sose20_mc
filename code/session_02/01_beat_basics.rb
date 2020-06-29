

use_bpm 120

loop do
  sample :drum_heavy_kick
  sleep rrand(0.9, 1)
  sample :drum_snare_hard
  sleep 1
  sample :drum_heavy_kick
  sleep 1
  sample :drum_snare_hard
  sleep 1
  
end