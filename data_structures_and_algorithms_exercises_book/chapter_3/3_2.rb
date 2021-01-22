# 線形探索をすればよい
v = gets.to_i
a = gets.split.map(&:to_i)

puts a.count {|e| e == v }
