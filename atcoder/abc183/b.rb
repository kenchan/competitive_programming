Sx, Sy, Gx, Gy = gets.split.map(&:to_i)

if Sx < Gx
  puts Sx + (Gx - Sx).abs / (Gy.to_f / Sy + 1)
else
  puts Sx - (Gx - Sx).abs / (Gy.to_f / Sy + 1)
end
