live_loop :chords do
  cue :chords
  use_synth :fm
  with_fx :slicer do |fx|
    control fx, phase: 1.1
    play chord(:f, :minor7),release: 2.5
    sleep 2
    control fx, phase: 0.5
  end
end
live_loop :beat do
  sync :chords
  sleep 1
  sample :sn_dolf
  sleep 1
end
live_loop :bass do
  sync :chords
  sample :bd_gas,amp:5
  sleep 0.5
end
live_loop :hh do
  sync :beat
  20.times do
    sample :drum_cymbal_closed
    sleep 0.25
  end
end

