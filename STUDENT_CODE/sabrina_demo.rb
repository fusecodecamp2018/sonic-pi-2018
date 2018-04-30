# Welcome to Sonic Pi v2.11.1
live_loop :kick do
  4.times do
    sample :bd_ada
    sleep 1
  end
end
live_loop :snare do
  sync :kick
  3.times do
    sleep 2
    
    sample :ambi_glass_hum
  end
end
live_loop :hh do
  sync :kick
  10.times do
    sample :bass_voxy_c
    sleep 0.4
    
    
  end
  
  
  
end





