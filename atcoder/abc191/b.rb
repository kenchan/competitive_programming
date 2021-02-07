N, X = gets.split.map(&:to_i)
A = gets.split.map(&:to_i)

puts A.reject {|a| a == X}.join(' ')
