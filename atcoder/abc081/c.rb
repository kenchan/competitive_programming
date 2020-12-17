n, k = gets.split.map(&:to_i)

aa = gets.split.map(&:to_i)

h = aa.inject({}) {|acc, a|
  acc[a] ||= 0
  acc[a] += 1
  acc
}

if h.size <= k
  puts 0
else
  puts h.values.sort.first(h.size - k).inject(&:+)
end
