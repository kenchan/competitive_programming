n, k = gets.split.map(&:to_i)
h = gets.split.map(&:to_i)

if n <= k
  puts 0
  exit
end

puts h.sort_by {|i| i * -1 }[k..-1].inject(&:+)
