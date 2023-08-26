# https://atcoder.jp/contests/abc317/tasks/abc317_b


N = gets.to_i
As = gets.split.map(&:to_i).sort

before = As.first - 1

As.each do |i|
  if i - before == 1
    before = i
  else
    puts i - 1
    exit
  end
end
