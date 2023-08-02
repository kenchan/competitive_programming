# https://atcoder.jp/contests/abc255/tasks/abc255_b


N, K = gets.split.map(&:to_i)
As = gets.split.map(&:to_i)
Axy = []
Bxy = []
N.times do |i|
  if As.include?(i + 1)
    Axy << gets.split.map(&:to_i)
  else
    Bxy << gets.split.map(&:to_i)
  end
end

puts Bxy.map {|(bx, by)|
  Axy.map {|(ax, ay)|
    # 線分の長さを求める
    Math.sqrt((ax - bx) ** 2 + (ay - by) ** 2)
  }.min
}.max
