live_loop :hay do
  stop
  with_fx :distortion ,mix: 0.3, phase: 2.5 do
    sample :loop_safari, rate: 1
  end
  sleep 4
end

live_loop :downbeat do
  sync:hay
  2.times
  with_fx :distortion ,mix: 0.3 do
    sample :drum_cymbal_pedal
  end
  sleep 1
end

live_loop :highbeat do
  sync:hay
  4.times
  with_fx :echo, mix: 0.3, phase: 2.5 do
    sample :guit_em9, rate: 0.5, amp:5
  end
  sleep 1
end

live_loop :sup do
  with_fx :reverb,mix: 0.5, room: 0.5 do
    sample :bd_boom, release: 2
  end
  sleep 1
end

live_loop :cover1 do
  sync :sup
  4.times
  with_fx :distortion,mix: 0.5, amp: 5 do
    sample :guit_em9,rate: -0.5
  end
  sleep 5
end

live_loop :guit do
  with_fx :echo, mix: 0.3, phase: 0.25 do
    sample :guit_em9, rate: 0.5
  end
  #  sample :guit_em9, rate: -0.5
  sleep 8
end

live_loop :boom do
  with_fx :reverb, room: 0.5 do
    sample :bd_boom, amp: 10, rate: 1
  end
  sleep 8
end

live_loop :flibble do
  sample :guit_e_fifths, rate: -0.5
  sleep 5
end

live_loop :flibble do
  with_fx :distortion, mix: 0.3, phase: 0.25 do
    sample :guit_em9,rate: -0.5
    sleep 3
  end
end

live_loop :guit do
  with_fx :slicer, mix: 0.3, phase: 0.25 do
    sample :bd_boom, rate: 0.3
  end
  sleep 3
end
