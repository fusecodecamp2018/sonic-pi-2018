use_bpm 120
live_loop :kick do
  4. times do
    sample :ambi_swoosh
    sleep 1
  end
end

live_loop :snare do
  sync :kick
  2. times do
    sleep 1
    sample :bd_zome
    sleep 1
  end
end
live_loop :hh do
  sync :kick
  8. times do
    sample  :bd_haus
    sleep 2
  end
end

live_loop :hh do
  use_synth :dpulse
  with_fx :pan do |fx|
    control fx, phase: 0.127
    play_chord(chord :d, :minor7), release: 2.5
    sleep 2
    control fx, phase: 0.2
    play_chord chord(:g, '7', invert: 2), release:2.5
    sleep 2
    control fx, phase: 0.25
    play_chord chord(:c, :major7), release: 4
    sleep 4
  end
end
live_loop :kick do
  sync :kick
  
  sleep 0.5
  sample  :bd_boom
  sleep 0.5
end
