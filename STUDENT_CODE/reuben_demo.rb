use_bpm 120

live_loop :kick do
  4.times do
    sample :guit_harmonics
    sleep 1
  end
end

live_loop :a do
  sync :kick
  2.times do
    sample :bass_woodsy_c
    sleep 4
  end
end

live_loop :b do
  sync :kick
  2.times do
    sleep 4
    sample :ambi_lunar_land
  end
end

live_loop :c do
  sync :kick
  2.times do
    sleep 3
    sample :vinyl_scratch
    sleep 1
  end
end

live_loop :d do
  sync :kick
  2.times do
    sleep 0
    sample :elec_blup
  end
end

live_loop :e do
  sync :kick
  2.times do
    sleep 0
    sample :bd_zome
  end
end

live_loop :snare do
  sync :kick
  2.times do
    sleep 0
    sample :guit_em9
  end
end

live_loop :hh do
  sync :kick
  8.times do
    sample :drum_cymbal_closed
    sleep 0.5
  end
end

live_loop :tt do
  sync :kick
  2.times do
    sleep 0
    sample :bd_boom
  end
end

live_loop :aa do
  sync :kick
  2.times do
    sleep 1
    sample :bd_boom
  end
end

live_loop :bb do
  sync :kick
  1.times do
    sleep 3
    sample :bd_boom
  end
end


