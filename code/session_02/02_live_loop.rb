

live_loop :myBeat do
  use_bpm 120
  
  sample :drum_heavy_kick, amp: 1, pan: 0
  sleep rrand(0.9, 1)
  sample :drum_snare_hard, amp: 0.5, pan: -0.75
  sleep 1
  sample :drum_heavy_kick, amp: 0.75, pan: 0
  sleep 1
  sample :drum_snare_hard, amp: 0.25, pan: 0.75
  sleep 1
end

