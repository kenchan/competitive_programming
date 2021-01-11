N = gets.to_i
A = gets.split.map(&:to_i)
B = gets.split.map(&:to_i)

if N.times.inject(0) {|acc, i| acc + A[i] * B[i] } == 0
  puts 'Yes'
else
  puts 'No'
end
