# https://atcoder.jp/contests/abc257/tasks/abc257_c

N = gets.to_i
S = gets.chomp.chars.map(&:to_i)
Ws = gets.split.map(&:to_i)

m = N.times.inject({}) {|acc, i|
  acc[Ws[i]] ||= [0, 0]
  if S[i] == 0
    acc[Ws[i]][0] += 1
  else
    acc[Ws[i]][1] += 1
  end
  acc
}

init = S.count {|s| s == 1 }

ws = m.keys.sort

ans = [init]

ws.each do |w|
  count = ans.last

  child, adult = *m[w]

  ans << count + child - adult
end

puts ans.max

