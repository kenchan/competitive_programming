r1, c1 = gets.split.map(&:to_i)
r2, c2 = gets.split.map(&:to_i)

if r1 == r2 && c1 == c2
  puts 0
  exit
end

if r1 + c1 == r2 + c2
  puts 1
  exit
end

if r1 - c1 == r2 - c2
  puts 1
  exit
end

if (r1 - r2).abs + (c1 - c2).abs <= 3
  puts 1
  exit
end

if (r1 - r2).abs + (c1 - c2).abs <= 6
  puts 2
  exit
end

if ((r1 + c1) - (r2 + c2)).abs <= 3
  puts 2
  exit
end

if ((r1 - c1) - (r2 - c2)).abs <= 3
  puts 2
  exit
end

if r1 % 2 == c1 % 2
  puts r2 % 2 == c2 % 2 ? 2 : 3
else
  puts r2 % 2 == c2 % 2 ? 3 : 2
end
