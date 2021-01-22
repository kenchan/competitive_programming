# 最大と最小の差が一番大きくなる

a = gets.split.map(&:to_i)

min = a.first
max = a.first

a.each do |e|
  if e < min
    min = e
  elsif max < e
    max = e
  end
end

puts max - min
