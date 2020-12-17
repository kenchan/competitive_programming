N = gets.to_i

1.upto(N) do |a|
  break if N < 3 ** a + 5

  1.upto(N) do |b|
    if 3 ** a + 5 ** b == N
      puts "#{a} #{b}"
      exit
    end

    break if N < 3 ** a + 5 ** b
  end
end

puts '-1'
