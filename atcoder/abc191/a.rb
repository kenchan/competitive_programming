V, T, S, D = gets.split.map(&:to_i)

if V * T <= D && D <= V * S
  puts 'No'
else
  puts 'Yes'
end
