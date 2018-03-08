live_loop :backgroundmusic do
  sample :drum_cymbal_hard
  sleep 2.138
end
live_loop :additions do
  sync :backgroundmusic
  sample :ambi_lunar_land
  sleep 2.138
  live_loop :chords do
    use_synth :hollow
    with_fx :gverb do |fx|
      control fx, phase: 0.3
      play_chord (chord :d, :major), release: 3
      sleep 2
      control fx, phase: 0.4
      play_chord chord(:d, :maj9, invert: 3), release: 4
      sleep 2
      control fx, phase: 0.5
      play_chord chord(:d, :major7), release: 5
      sleep 2
      control fx, phase: 0.6
      play_chord chord(:d, :m11), release: 6
      use_synth :dpulse
      with_fx  :band_eq do |fx|
        sleep 3
      end
    end
  end
end