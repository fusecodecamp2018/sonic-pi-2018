# Welcome to Sonic Pi v2.11.1
use_bpm 120
live_loop :bass do
  use_random_seed 3521868
  notes = (scale :c, :blues_minor).repeat(4).pick(8)
  use_octave -2
  s = synth :dsaw,sustain: 2
  8.times do
    control s, note: notes.tick, slide: rrand(0, 0.15) if rand < 0.5
    sample :ambi_dark_woosh
    
    
    sample :bd_gas
    sample :drum_snare_soft, rate: -2
    sample :vinyl_
    sample :bd_sone
    sample :bass_voxy_c,amp: 0.3
    sample  :vinyl_scratch
    
    sleep 0.75
  end
end

