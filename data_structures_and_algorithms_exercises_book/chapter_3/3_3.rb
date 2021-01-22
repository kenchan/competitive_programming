# 線形探索で1番小さい数と2番目に小さい数を保存すれば良い

a = gets.split.map(&:to_i)

min = 10 ** 9 + 2
answer = 10 ** 9 + 1

a.each do |e|
  if e < min
    answer = min
    min = e
  elsif e < answer
    answer = e
  end
end

puts answer
