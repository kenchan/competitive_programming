A, B, C = gets.split.map(&:to_i)

A.step(A * B, A).each do |i|
  if i % B == C
    puts 'YES'
    exit
  end
end

puts 'NO'
