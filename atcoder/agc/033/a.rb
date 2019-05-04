h, w = STDIN.gets.split.map(&:to_i)

a = []

while l = STDIN.gets
  a << l.strip.split(//)
end

count = 0

until a.flatten.all? {|v| v == '#' }
  tmp = Marshal.load(Marshal.dump(a))

  h.times.each do |i|
    w.times.each do |j|
      if a[i][j] == '#'
        if j - 1 >= 0
          tmp[i][j - 1] = "#"
        end
        if j + 1 < w
          tmp[i][j + 1] = "#"
        end
        if i - 1 >= 0
          tmp[i - 1][j] = "#"
        end
        if i + 1 < h
          tmp[i + 1][j] = "#"
        end
      end
    end
  end

  a = tmp
  count = count + 1
end

puts count
