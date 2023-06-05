# https://atcoder.jp/contests/abc259/tasks/abc259_e


N = gets.to_i
ms = Array.new(1) { gets.to_i }
pss = Array.new(1) { Array.new(m_1) }
ess = Array.new(1) { Array.new(m_1) }
1.times do |i|
  m_1.times do |j|
    pss[i][j], ess[i][j] = gets.split.map(&:to_i)
  end
end
ms = Array.new(2) { gets.to_i }
m_N = gets.to_i

puts ans
