K, N = gets.split.map(&:to_i)
A = gets.split.map(&:to_i)

m = 0

(A << (K + A.first)).each_cons(2) do |a, b|
  m = b - a < m ? m : b - a 
end

(A << (K + A.first)).reverse.each_cons(2) do |a, b|
  m = (b - a).abs < m ? m : (b - a).abs
end

puts K - m
