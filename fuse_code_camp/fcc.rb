live_loop :foo do
  sample "./fcc.wav", rate: rrand(0.75, 1.5), amp: 11
  2.times do
    sample :loop_breakbeat, amp: 11
    sleep 1.9
  end
  
  sample :loop_tabla, amp: 10
  use_synth :prophet
  play :e1, release: 8, cutoff: rrand(70, 130), amp: 10
  sleep 10
end
