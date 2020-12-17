a, b = gets.split.map(&:to_i)

case
when a == 0 || b == 0 || (a < 0 && 0 < b)
  puts 'Zero'
when 0 < a || (a != b && (b - a).odd?)
  puts 'Positive'
else
  puts 'Negative'
end
