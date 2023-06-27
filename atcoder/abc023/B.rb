# https://atcoder.jp/contests/abc023/tasks/abc023_b

N = gets.to_i
S = gets.chomp

str = "b"

100.times do |i|
  if S == str
    puts i
    exit
  elsif S.size < str.size
    puts '-1'
    exit
  end

  case i % 3
  when 0
    str = 'a' + str + 'c'
  when 1
    str = 'c' + str + 'a'
  when 2
    str = 'b' + str + 'b'
  end
end
