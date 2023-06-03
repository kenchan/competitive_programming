N, K = gets.split.map(&:to_i)
As = gets.split.map(&:to_i)

as = As.sort.uniq

max = K < as.size - 1 ? K : as.size - 1

max.times do |i|
  if as[i] != i
    puts i
    exit
  end
end

puts max
