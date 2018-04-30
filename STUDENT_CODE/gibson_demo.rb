use_bpm 120
live_loop :bass do
  use_random_seed 347685
  notes = (scale :c,:blues_minor).repeat(2).pick(8)
  use_octave -2
  s = synth :dsaw, sustain: 2
  8.times do
    control s, note: notes .tick, slide: rrand(0, 0.15) if rand < 0.5
    sleep 0.25
  end
end
live_loop:chords do
  sleep 4
  sample :ambi_dark_woosh
end