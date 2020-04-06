S, L, R = gets.split.map(&:to_i)

if S < L
  puts L
elsif R < S
  puts R
else
  puts S
end
