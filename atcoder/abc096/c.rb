H, W = gets.split.map(&:to_i)
s = H.times.map { gets.chomp.split('') }

if H == 1 && W == 1
  puts 'No'
  exit
end

H.times do |i|
  W.times do |j|
    next if s[i][j] == '.'

    if 0 < j
      next if s[i][j - 1] == '#'
    end
    if j < W
      next if s[i][j + 1] == '#'
    end
    if 0 < i
      next if s[i - 1][j] == '#'
    end
    if i < H
      next if s[i + 1][j] == '#'
    end

    puts 'No'
    exit
  end
end

puts 'Yes'
