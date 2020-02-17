A, B, C = gets.split.map(&:to_i)

if A == B && B == C
  puts 'No'
elsif A == B || A == C || B == C
  puts 'Yes'
else
  puts 'No'
end
