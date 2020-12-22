N = gets.to_i
D = N.times.map { gets.split.map(&:to_i) }

z = 0

D.each do |a, b|
  if a == b
    z += 1
  else
    z = 0
  end

  if z == 3
    puts 'Yes'
    exit
  end
end

puts 'No'
