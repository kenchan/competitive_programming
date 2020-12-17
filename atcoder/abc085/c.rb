N, Y = gets.split.map(&:to_i)

N.downto(0) do |x|
  (N - x).downto(0) do |y|
    if x * 10000 + y * 5000 + (N - x - y) * 1000 == Y
      puts "#{x} #{y} #{N - x - y}"
      exit
    end
  end
end

puts "-1 -1 -1"
