# https://atcoder.jp/contests/code-festival-2014-final/tasks/code_festival_final_c

A = gets.to_i

10.upto(10000) do |ans|
  num = 0
  ans.to_s.chars.reverse.each_with_index do |c, i|
    num += c.to_i * (ans ** i.to_i)
  end

  if num == A
    puts ans
    exit
  end
end

puts -1
