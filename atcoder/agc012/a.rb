N = gets.to_i
a = gets.split.map(&:to_i)

puts a.sort.reverse.each_slice(2).first(N).sum {|_, i| i }
