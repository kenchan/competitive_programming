N, M = gets.split.map(&:to_i)
S = gets.chomp
T = gets.chomp

l = N.lcm(M)

x = {}

0.upto(N - 1) do |i|
  x[i * (l / N)] = S[i]
end

0.upto(M - 1) do |i|
  c = x[i * (l / M)]
  if c && c != T[i]
    puts '-1'
    exit
  else
    x[i * (l / M)] = T[i]
  end
end

puts l
