n = gets.to_i
a = gets.split.map(&:to_i)

puts a.size == a.uniq.size ? 'YES' : 'NO'
