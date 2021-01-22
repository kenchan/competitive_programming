# 6が出力されること期待する
N = 7
a = [1, 2, 4, 5, 4, 6, 4, 3]
v = 4

found_id = -1

0.upto(N - 1) do |i|
  if a[i] == v
    found_id = i
  end
end

puts found_id
