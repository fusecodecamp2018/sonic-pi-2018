# Welcome to Sonic Pi v2.11.1
live_loop :bass do
  use_random_seed 3521868
  notes = (scale :d, :blues_minor).repeat(2).pick(5)
  s = synth :saw, sustain: 1
  
  8.times do
    control s, note: notes.tick, slide: rrand(0, 0.15) if rand < 0.5
    sleep 0.25
  end
end
live_loop :riff do
  use_synth :mod_pulse
  riff = (ring :c1, :r, :c3, :g2, :d, :r, :d, :a3)
  play riff.tick, release: 3, cutoff: 80
  sleep 0.25
end
live_loop :chords do
  use_synth :fm
  with_fx :flanger do |fx|
    control fx, phase: 0.5
    play_chord (chord :a, :minor7), release: 2.5
    sleep 2
    control fx, phase: 0.5
    play_chord (chord :e, '9', invert: 1), release: 2.5
    sleep 2
    control fx, phase: 0.5
    play_chord chord(:c, :major7), realease: 6
    sleep 4
  end
end
use_bpm 120
live_loop :kick do
  4.times do
    sample :drum_tom_mid_hard
    sleep 1
  end
end
live_loop :snare do
  stop
  sync :kick
  2.times do
    sleep 1
    sample :elec_filt_snare
    sleep 1
  end
end
live_loop :hh do
  sync :kick
  8.times do
    sample :drum_tom_hi_hard
    sleep 1
  end
end
live_loop :hh do
  sync :kick
  6.times do
    sample :ambi_loud_buzz
    sleep 1
  end
end
use_bpm 120
live_loop :kick do
  4.times do
    sample :drum_tom_mid_hard
    sleep 1
  end
end
live_loop :snare do
  stop
  sync :kick
  2.times do
    sleep 1
    sample :elec_filt_snare
    sleep 1
  end
end
live_loop :hh do
  sync :kick
  8.times do
    sample :drum_tom_hi_hard
    sleep 1
  end
end
live_loop :hh do
  stop
  sync :kick
  6.times do
    sample :ambi_loud_buzz
    sleep 1
  end
end




use_bpm 120
live_loop :kick do
  stop
  4.times do
    sample :drum_tom_mid_hard
    sleep 1
  end
end

live_loop :snare do
  stop
  sync :kick
  2.times do
    sleep 1
    sample :elec_filt_snare
    sleep 1
  end
end
live_loop :hh do
  stop
  sync :kick
  8.times do
    sample :drum_tom_hi_hard
    sleep 1
  end
end
live_loop :hh do
  stop
  sync :kick
  6.times do
    sample :ambi_loud_buzz
    sleep 1
  end
end
use_synth :hoover
use_octave 2
with_fx :distortion do
  play :a1,attack: 3,release: 4, sustain:  5, release: 6
end
live_loop :hh do
  sync_bpm :kick
  4.times do
    sample :ambi_drone
    sleep 1
  end
end
live_loop :drum_hard do
  sample :drum_bass_hard,amp:90
  sleep 1
end






































