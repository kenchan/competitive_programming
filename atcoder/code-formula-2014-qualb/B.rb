# https://atcoder.jp/contests/code-formula-2014-qualb/tasks/code_formula_2014_qualB_b

N = gets.chomp

ans = [0, 0]

N.chars.reverse.each.with_index do |c, i|
  ans[(i + 1) % 2] += c.to_i
end

puts ans.join(' ')
