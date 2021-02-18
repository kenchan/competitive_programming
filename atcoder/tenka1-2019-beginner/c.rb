N = gets.to_i
S = gets.chomp.split("")

blacks = []
whites = []

blacks[0] = 0
whites[N] = 0

N.times.inject(0) do |acc, i|
  if S[i] == "#"
    acc += 1
  end
  blacks[i + 1] = acc
  acc
end

N.times.inject(0) do |acc, i|
  if S[N - i - 1] == "."
    acc += 1
  end
  whites[N - i- 1] = acc
  acc
end

puts (N + 1).times.map {|i| blacks[i] + whites[i] }.min
