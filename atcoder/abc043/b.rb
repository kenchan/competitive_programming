s = gets.chomp

str = ''

s.each_char do |c|
  case c
  when '0'
    str << '0'
  when '1'
    str << '1'
  when 'B'
    str.chop!
  end
end

puts str
