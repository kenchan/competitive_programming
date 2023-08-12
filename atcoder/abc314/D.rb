# https://atcoder.jp/contests/abc314/tasks/abc314_d


N = gets.to_i
S = gets.chomp.chars
Q = gets.to_i
last_ud = -1

txc = Q.times.map {|i|
  t, x, c = gets.split
  if t == '2' || t == '3'
    last_ud = i
  end
  [t, x, c]
}

txc.each_with_index do |(t, x, c), i|
  case t
  when '1'
    S[x.to_i - 1] = c
  when '2'
    S.map! {|c| c.downcase } if i == last_ud
  when '3'
    S.map! {|c| c.upcase } if i == last_ud
  end
end

puts S.join
