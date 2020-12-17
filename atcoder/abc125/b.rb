_ = STDIN.gets.split.map(&:to_i)
v = STDIN.gets.split.map(&:to_i)
c = STDIN.gets.split.map(&:to_i)
 
vc = v.map.with_index {|v1, i| v1 - c[i] }
 
puts vc.select {|i| i > 0 }.inject(:+) || 0
