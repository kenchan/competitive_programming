
a, b = gets.split.map(&:to_i)
c, d = gets.split.map(&:to_i)

max = -1000000

a.upto(b) do |x|
  c.upto(d) do |y|
    max = [max, x - y].max
  end
end

puts max
