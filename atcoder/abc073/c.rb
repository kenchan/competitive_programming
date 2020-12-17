n = gets.to_i

h = {}

n.times do
  i = gets.to_i
  if h[i]
    h.delete(i)
  else
    h[i] = 1
  end
end

puts h.keys.count
