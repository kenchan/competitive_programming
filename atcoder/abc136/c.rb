N = gets.to_i
H = gets.split.map(&:to_i)

max = 0

0.upto(N - 1) do |i|
  if H[i] < max - 1
    puts 'No'
    exit
  end
  max = max < H[i] ? H[i] : max
end

puts 'Yes'
