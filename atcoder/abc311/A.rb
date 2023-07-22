# https://atcoder.jp/contests/abc311/tasks/abc311_a

N = gets.to_i
S = gets.chomp

a, b, c = false, false, false

0.upto(N - 1) do |i|
  case S[i]
  when 'A'
    a = true
  when 'B'
    b = true
  when 'C'
    c = true
  end

  if a && b && c
    puts i + 1
    exit
  end
end
