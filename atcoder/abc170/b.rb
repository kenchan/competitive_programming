X, Y = gets.split.map(&:to_i)

0.upto(X) do |i|
  a = i
  b = X - i

  if a * 2 + b * 4 == Y
    puts 'Yes'
    exit
  end
end

puts 'No'
