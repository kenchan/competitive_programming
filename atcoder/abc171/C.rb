# https://atcoder.jp/contests/abc171/tasks/abc171_c

N = gets.to_i
n = N

chars = ('a'..'z').to_a

ans = []

loop do
  n -= 1
  i = n % 26

  ans << chars[i]

  n = n / 26
  if n == 0
    break
  end
end

puts ans.reverse.join
