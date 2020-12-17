xs = gets.split.map(&:to_i)

xs.each_with_index do |x, i|
  if x == 0
    puts i + 1
    exit
  end
end
