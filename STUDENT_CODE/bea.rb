live_loop :chords do
  use_synth :fm
  with_fx :slicer do |fx|
    control fx, phrase: 0.5
    play_chord (chord :d, :minor7), release: 3
    sleep 1
    control fx, phrase: 1
  end
  with_fx :slicer do |fx|
    control fx, phrase: 0.5
    play_chord (chord :e, :minor7), release: 3
    sleep 1
    control fx, phrase: 1
  end
  with_fx :slicer do |fx|
    control fx, phrase: 0.5
    play_chord (chord :c, :minor7), release: 3
    sleep 1
    control fx, phrase: 1
  end
  with_fx :slicer do |fx|
    control fx, phrase: 0.5
    play_chord (chord :g, :minor7), release: 3
    sleep 1
    control fx, phrase: 1
  end
end

live_loop :kick do
  5. times do
    sample :drum_bass_hard
    sleep 1
  end
end

use_bpm 190
live_loop :riff do
  use_synth :zawa
  riff = (ring :c, :c, :c, :e, :r, :d, :e, :f, :f, :r, :e, :c, :d, :d, :c, :r)
  play riff.tick, release: 1, cutoff: 40, amp:rrand(2,3)
  sleep 1
end

