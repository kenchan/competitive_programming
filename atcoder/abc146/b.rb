n = gets.to_i
s = gets.chomp

puts s.codepoints.map {|c|
  if c + n <=  90
    (c + n).chr
  else
    (c + n - 26).chr
  end
}.join
