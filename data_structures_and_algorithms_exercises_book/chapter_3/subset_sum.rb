# ruby subset_sum.rb
# 5 10
# 1 2 4 5 11
# => Yes

N, W = gets.split.map(&:to_i)
A = gets.split.map(&:to_i)

0.upto(1 << N) do |i|
  sum = 0
  0.upto(N - 1) do |j|
    if i[j] == 1 # Integer#[]でnビット目が立っているかわかる
      sum += A[j]
    end
  end

  if sum == W
    puts 'Yes'
    exit
  end
end

puts 'No'
