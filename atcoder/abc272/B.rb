# https://atcoder.jp/contests/abc272/tasks/abc272_b

require 'set'

N, M = gets.split.map(&:to_i)

xx = Array.new(N) { Array.new(N, false) }

M.times do
  kx = gets.split.map(&:to_i)
  kx[1..-1].combination(2).each do |x1, x2|
    xx[x1 - 1][x2 - 1] = true
    xx[x2 - 1][x1 - 1] = true
  end
end

N.times do |i|
  N.times do |j|
    next if i == j
    unless xx[i][j]
      puts 'No'
      exit
    end
  end
end

puts 'Yes'
