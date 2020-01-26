h, n = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)

puts h <= a.inject(&:+) ? 'Yes' : 'No'
