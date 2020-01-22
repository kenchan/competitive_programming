n = STDIN.gets.to_i

pn = STDIN.gets.split.map(&:to_i)

min = pn.first
count = 0

pn.each do |i|
  if i <= min 
    min = i
    count = count + 1
  end
end

puts count