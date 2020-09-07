N, M, X = gets.split.map(&:to_i)
A = gets.split.map(&:to_i)

puts A.partition {|a| a < X }.map(&:size).sort.first
