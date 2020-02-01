a, b, x = gets.split.map(&:to_i)

MAX = 10 ** 9

def calc(a, b, n)
  a * n + b * n.to_s.length
end

if x < calc(a, b, 1)
  puts 0
  exit
elsif calc(a, b, MAX) < x
  puts MAX
  exit
end

min = 1
n = MAX
max = MAX

loop do
  if calc(a, b, n) == x
    break 
  elsif calc(a, b, n) > x
    max = n
    n = (min + n) / 2
  elsif calc(a, b, n) < x
    min = n
    n = (max + n) / 2
  end

  if max - min == 1
    break
  end
end

puts n
