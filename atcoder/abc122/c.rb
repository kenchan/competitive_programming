N, Q = gets.split.map(&:to_i)
S = gets.chomp.chars
lr = Q.times.map { gets.split.map(&:to_i) }

ac = [0, 0]

2.upto(N) do |i|
  if S[i - 2] == 'A' && S[i - 1] =='C'
    ac[i] = ac[i - 1] + 1
  else
    ac[i] = ac[i - 1]
  end
end

lr.each do |l, r|
  puts ac[r] - ac[l]
end
