h, w = STDIN.gets.split.map(&:to_i)

a = []
hh = 0

while l = STDIN.gets
  l.strip.split(//).each_with_index do |v, i|
    if v == '.'
      a << i + hh * w
    end
  end

  hh = hh + 1
end

count = 0

until a == []
  tmp = a.dup
  a.each do |v|
    if v % w == 0
      if (v - w - 1 > 0 && !a.include?(v - w - 1)) || (v + w + 1 < h * w && !a.include?(v + w + 1))
        tmp = tmp - [v]
      end
      unless a.include?(v + 1)
        tmp = tmp - [v]
      end
    elsif v % w == w - 1
      if (v - w - 1 > 0 && !a.include?(v - w - 1)) || (v + w + 1 < h * w && !a.include?(v + w + 1))
        tmp = tmp - [v]
      end
      unless a.include?(v - 1)
        tmp = tmp - [v]
      end
    else
      if (v - w - 1 > 0 && !a.include?(v - w - 1)) || (v + w + 1 < h * w && !a.include?(v + w))
        tmp = tmp - [v]
      end

      unless !a.include?(v - 1) || !a.include?(v + 1)
        tmp = tmp - [v]
      end
    end
  end

  count = count + 1
  a = tmp
end

p count
