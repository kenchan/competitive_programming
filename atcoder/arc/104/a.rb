A, B = gets.split.map(&:to_i)

-100.upto(100) do |x|
  -100.upto(100) do |y|
    if x + y == A && x - y == B
      puts "#{x} #{y}"
      exit
    end
  end
end
