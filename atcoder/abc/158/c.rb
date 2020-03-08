A, B = gets.split.map(&:to_i)

0.upto(100 * 10) do |i|
  if (i * 0.08).floor == A && (i * 0.10).floor == B
    puts i
    exit
  end
end

puts '-1'
