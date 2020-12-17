N = gets.to_i
X = gets.split.map(&:to_i)

sorted = X.sort

a = sorted[X.size / 2 - 1]
b = sorted[X.size / 2]

X.each do |x|
  if b <= x
    puts a
  else
    puts b
  end
end
