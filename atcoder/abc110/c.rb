s = STDIN.gets.chomp
t = STDIN.gets.chomp

sm = s.split('').inject({}) {|h, c| h[c] ? h[c] = h[c] + 1 : h[c] = 1; h }
tm = t.split('').inject({}) {|h, c| h[c] ? h[c] = h[c] + 1 : h[c] = 1; h }

puts sm.values.sort == tm.values.sort ? 'Yes' : 'No'
