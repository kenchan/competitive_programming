# https://atcoder.jp/contests/code-festival-2015-qualb/tasks/codefestival_2015_qualB_d


N = gets.to_i
Ss = Array.new(N)
Cs = Array.new(N)
N.times do |i|
  Ss[i], Cs[i] = gets.split.map(&:to_i)
end

puts ans
