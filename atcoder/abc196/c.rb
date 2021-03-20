N = gets.chomp

if N.to_i <= 10
  puts 0
  exit
end

if N.length.even?
  s1, s2 = N[0...(N.length / 2)], N[(N.length / 2)..-1]

  if s1.to_i > s2.to_i
    puts s1.to_i - 1
  else
    puts [s1.to_i, s2.to_i].min
  end
else
  puts "9" * (N.length / 2)
end
