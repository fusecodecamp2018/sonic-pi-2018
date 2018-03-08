# Welcome to Sonic Pi v2.11.1
live_loop :melody do
  use_synth :hollow
  notes = ring :c, :a, :g, :c, :a, :g, :b3, :a, :g, :b3, :a, :g
  play notes.tick
  if (look % 10 == 0)
    print '!!!!!!!!!!!'
  end
  sleep(0.5)
end



live_loop :drums do
  stop
  sync :melody
  sample :drum_heavy_kick
  sleep (1)
  sample :drum_heavy_kick
  sleep (0.5)
  sample :drum_cymbal_closed
  sleep (1.5)
end

live_loop :wispyBells do
  sync :melody
  stop
  use_synth :dark_ambience
  use_octave 1
  play :c, sustain:2
  sleep 3
  play :g, sustain:2
  sleep 3
end

live_loop :bass do
  sync :melody
  stop
  use_synth :piano
  use_octave -1
  play_chord (chord :c, :major, invert: 1), sustain: 2, release: 3, decay: 1.5
  sleep (3)
  play_chord (chord :g, :major, invert: 2), sustain: 2, release: 3, decay: 1.5
  sleep (3)
end





##| define :playDrums do
##|   sync :melody
##|   if drumStart
##|     sleep (1)
##|     sample :drum_heavy_kick
##|     sleep (1)
##|     sample :drum_heavy_kick
##|     sleep (0.5)
##|     sample :drum_cymbal_closed
##|   else
##|     sleep 1
##|   end
##| end


