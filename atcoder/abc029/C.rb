CHARS = %w(a b c)
N = gets.to_i

0.upto(3 ** N - 1) do |i|
  str = ""
  N.times do
    str << CHARS[i % 3]
    i = i / 3
  end

  puts str.reverse
end
