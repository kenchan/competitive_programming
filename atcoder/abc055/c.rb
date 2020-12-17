s, c = STDIN.gets.split.map(&:to_i)

if s * 2 < c
  t = c - s * 2
  c = c - t / 2
  puts c / 2
else
  t = s - c
  s = s - (t / 2.0).ceil
  puts s
end
