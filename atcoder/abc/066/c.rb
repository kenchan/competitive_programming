n = gets.to_i
a = gets.split.map(&:to_i)

ans = if n.odd?
  (n - 1).step(0, -2).map {|i| a[i] } + 1.step(n - 2, 2).map {|i| a[i]}
else
  (n - 1).step(1, -2).map {|i| a[i] } + 0.step(n - 2, 2).map {|i| a[i]}
end

puts ans.join(' ')
