A, V = gets.split.map(&:to_i)
B, W = gets.split.map(&:to_i)
T = gets.to_i

if V <= W
  puts 'NO'
  exit
end

if (A - B).abs <= (V - W) * T
  puts 'YES'
else
  puts 'NO'
end
