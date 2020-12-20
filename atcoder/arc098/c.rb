N = gets.to_i
S = gets.chomp.split('')

c = [[0, 0]]

0.upto(N - 1) do |i|
  if S[i] == 'E'
    c[i + 1] = [c[i][0] + 1, c[i][1]]
  else
    c[i + 1] = [c[i][0], c[i][1] + 1]
  end
end

puts 1.upto(N).map {|i|
  w_to_e = c[i - 1][1]
  e_to_w = c[N][0] - c[i][0]

  w_to_e + e_to_w
}.min
