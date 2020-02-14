a, b, n = gets.split.map(&:to_i)
x = gets.chomp

x.each_char do |c|
  case
  when c == 'S'
    a -= 1 if 0 < a
  when c == 'C'
    b -= 1 if 0 < b
  when c == 'E'
    case
    when a == 0 && b == 0
      # do nothing
    when a == b
      a -= 1 if 0 < a
    when a < b
      b -= 1 if 0 < b
    when b < a
      a -= 1 if 0 < a
    end
  end
end

puts a
puts b
