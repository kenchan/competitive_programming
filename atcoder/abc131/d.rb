N = gets.to_i
AB = N.times.map { gets.split.map(&:to_i) }

t = 0
sorted = AB.sort_by {|a, b| b }

sorted.each do |a, b|
  t += a
  if b < t
    puts 'No'
    exit
  end
end

puts 'Yes'
