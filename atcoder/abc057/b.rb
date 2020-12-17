N, M = gets.split.map(&:to_i)
ab = N.times.map { gets.split.map(&:to_i) }
cd = M.times.map { gets.split.map(&:to_i) }

ab.each do |a, b|
  min = 10 ** 9
  index = 0
  cd.each_with_index do |(c, d), i|
    dis = (a - c).abs + (b - d).abs
    if dis < min
      min = dis
      index = i
    end
  end

  puts index + 1
end
