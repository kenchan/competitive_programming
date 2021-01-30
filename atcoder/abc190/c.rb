N, M = gets.split.map(&:to_i)
AB = M.times.map { gets.split.map(&:to_i) }
K = gets.to_i
CD = K.times.map { gets.split.map(&:to_i) }

ans = 0

0.upto(2 ** K).each do |b|
  n = [0] * N
  K.times do |i|
    n[CD[i][b[i]] - 1] = 1
  end

  count = AB.count {|a, b| n[a - 1] == 1 && n[b - 1] == 1}
  if ans < count
    ans = count
  end
end

puts ans
