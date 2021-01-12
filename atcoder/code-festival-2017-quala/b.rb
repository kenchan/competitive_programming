N, M, K = gets.split.map(&:to_i)

0.upto(N) do |n|
  0.upto(M) do |m|
    if (M * n - n * m) + (N * m - n * m) == K
      puts 'Yes'
      exit
    end
  end
end

puts 'No'
