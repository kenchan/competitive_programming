N = gets.to_i
A = gets.split.map(&:to_i)

ans = 0
d = ''
before = A.first

A.each do |i|
  if before == i
    next
  end

  case d
  when ''
    if before < i
      d = '+'
      before = i
    else
      d = '-'
      before = i
    end
  when '-'
    if before < i
      before = i
      d = ''
      ans += 1
    else
      before = i
    end
  when '+'
    if before < i
      before = i
    else
      before = i
      d = ''
      ans += 1
    end
  end
end

puts ans + 1
