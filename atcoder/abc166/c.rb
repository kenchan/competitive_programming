require 'set'

N, M = gets.split.map(&:to_i)

H = gets.split.map(&:to_i)

n = M.times.inject(Set.new) do |s|
  a, b = gets.split.map(&:to_i)

  if H[a - 1] < H[b - 1]
    s << a
  elsif H[a - 1] > H[b - 1]
    s << b
  else
    s << a
    s << b
  end
end

puts N - n.size
