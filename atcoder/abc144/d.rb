a, b, x = gets.split.map(&:to_i)

s = x.to_f / a

rad = if b / 2.0 < s / a
  h = 2.0 * (a * b - s) / a
  Math.atan2(h, a)
else
  w = 2 * s / b
  Math.atan2(b, w)
end

puts rad / (2 * Math::PI) * 360
