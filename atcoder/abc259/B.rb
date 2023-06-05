# https://atcoder.jp/contests/abc259/tasks/abc259_b

a, b, d = gets.split.map(&:to_i)

rad = d / 180.0 * Math::PI

puts "#{Math.cos(rad) * a - Math.sin(rad) * b} #{Math.sin(rad) * a + Math.cos(rad) * b}"
