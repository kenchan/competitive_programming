N = gets.to_i
K = gets.to_i
xn = gets.split.map(&:to_i)

puts xn.inject(0) {|acc, x| acc + [(0 - x).abs, (K - x).abs].min * 2 }