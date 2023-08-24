# https://atcoder.jp/contests/aising2020/tasks/aising2020_c

N = gets.to_i
ans = Hash.new(0)

1.upto(100) do |x|
  1.upto(100) do |y|
    1.upto(100) do |z|
      ans[x ** 2 + y ** 2 + z ** 2 + x * y + y * z + z * x] += 1
    end
  end
end


N.times do |i|
  puts ans[i + 1]
end
