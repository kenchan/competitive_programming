N = gets.to_i
A = gets.split.map(&:to_i)

puts (2..1000).max_by {|k|
 A.count {|a| a % k == 0 }
}
