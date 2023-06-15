# https://atcoder.jp/contests/abc032/tasks/abc032_c


N, K = gets.split.map(&:to_i)
ss = Array.new(N) { gets.to_i }

right = 0
num = 1
ans = 0

N.times do |left|
  if ss[left] == 0
    puts N
    exit
  end
  while right < N && num * ss[right] <= K
    num *= ss[right]
    right += 1
  end

  ans = right - left if ans < right - left

  num /= ss[left]
  if left == right
    right += 1
    num = 1
  end
end

puts ans
