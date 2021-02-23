N = gets.to_i
a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)

la = 0
lb = 0

N.times do |i|
  if a[i] < b[i]
    lb += (b[i] - a[i]) / 2
  elsif b[i] < a[i]
    la += a[i] - b[i]
  else
    # nothing
  end
end

puts la <= lb ? 'Yes' : 'No'
