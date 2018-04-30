
live_loop :HP do
  HP = (ring :b, :e, :g, :fs, :e, :b, :a, :fs, :e, :g, :fs, :ds, :f, :b, :r, :r, :r, :r, :r, :r, :r, :r)
  play HP.tick
  sleep 0.3
end


