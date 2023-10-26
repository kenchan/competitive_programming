# https://atcoder.jp/contests/abc315/tasks/abc315_b

M = gets.to_i
Ds = gets.split.map(&:to_i)
c = Ds.sum / 2

Ds.each_with_index do |d, i|
  if d < c
    c -= d
  else
    puts "#{i + 1} #{c + 1}"
    exit
  end
end
