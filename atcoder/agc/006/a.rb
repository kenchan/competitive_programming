N = gets.to_i
s = gets.chomp
t = gets.chomp

dup = 0

0.upto(s.length) do |i|
  if t.start_with?(s[i..-1])
    dup = s.length - i
    break
  end
end

puts s.length + t.length - dup
