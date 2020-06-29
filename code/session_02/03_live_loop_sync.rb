

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

live_loop :myMelody do
  
  sync :myBeat # start this melody right after the myBeat loop
  3.times do
    
    play 60
    sleep 0.75
    
  end
  
  #sleep 0.25
  
end
