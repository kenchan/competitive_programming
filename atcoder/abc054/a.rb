a, b = gets.split.map(&:to_i)

case
when a == b
  puts 'Draw'
when a == 1
  puts 'Alice'
when b == 1
  puts 'Bob'
when a > b
  puts 'Alice'
when a < b
  puts 'Bob'
end
