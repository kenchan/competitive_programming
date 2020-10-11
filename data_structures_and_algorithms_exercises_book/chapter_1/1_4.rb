def print_answer(x, y)
  puts "      #{x}"
  puts "x       #{y}"
  puts "-" * 15
  puts "      #{x * (y % 10)}"
  puts "     #{x * (y % 100 / 10)} "
  puts "   #{x * (y % 1000 / 100)} "
  puts "  #{x * (y / 1000)} "
  puts "-" * 15
  puts " #{x * y}"
end

# 1桁目
ans1 = 100000.upto(999999).inject([]) do |ans, x|
  0.upto(9) do |j|
    break if x * j > 670000
    if x * j / 100000 == 6 && x * j % 100000 / 10000 == 6
      ans << [x, j]
    end
  end
  ans
end

# 2桁目
ans2 = ans1.inject([]) do |ans, (x, y)|
  0.upto(9) do |j|
    break if x * j > 700000
    if x * j / 100000 == 6
      ans << [x, y + j * 10]
    end
  end
  ans
end

# 3桁目
ans3 = ans2.inject([]) do |ans, (x, y)|
  0.upto(9) do |j|
    next if x * j < 1000000
    if x * j % 100000 / 10000 == 6 && x * j % 10000 / 1000 == 6 && x * j % 1000 / 100 == 6
      ans << [x, y + j * 100]
    end
  end
  ans
end

ans4 = ans3.inject([]) do |ans, (x, y)|
  0.upto(9) do |j|
    break if 1000000 < x * j
    if x * j % 10000 / 1000 == 6 && x * j % 10 == 6
      ans << [x, y + j * 1000]
    end
  end
  ans
end

ans4.select do |x, y|
  a = x * y
  if 1000000000 < a && a < 10000000000 && a % 1000000 / 10000 == 66
    print_answer(x, y)
  end
end

__END__
線形にやるとさすがに終わらない。

100000.upto(999999) do |x|
  10.upto(99) do |y|
    y = y * 100 + 66
    p [x,y]
    a =  x * (y % 10)
    unless a.to_s =~ /^66\d{4}$/
      next
    end
    b = x * (y % 100 / 10)
    unless b.to_s =~ /^6\d{5}$/
      next
    end

    c = x * (y % 1000 / 100)
    unless c.to_s =~ /^\d\d666\d\d$/
      next
    end

    d = x * (y / 1000)
    unless c.to_s =~ /^\d\d6\d\d6$/
      next
    end

    print_answer(x, y)
  end
end
