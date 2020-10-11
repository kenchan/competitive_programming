def print_answer(a, b, c)
  puts "  2#{a}"
  puts "x #{b}#{c}"
  puts "-" * 5
  puts " #{(20 + a) * c}"
  puts " #{(20 + a) * b} "
  puts "-" * 5
  puts " #{(20 + a) * (b * 10 + c)}"
end

0.upto(9) do |i|
  0.upto(9) do |j|
    1.upto(4) do |k|
      if ((20 + i) * j) % 100 / 10 != 3
        next
      end
      if ((20 + i) * (k * 10 + j)) % 100 / 10 == 4
        print_answer(i, k, j)
        exit
      end
    end
  end
end
