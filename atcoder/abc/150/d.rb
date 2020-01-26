n, m = gets.split.map(&:to_i)

as = gets.split.map(&:to_i)

def f(x)
  c = 0
  while x % 2 != 1
    x /= 2
    c += 1
  end
  c
end

as2 = as.map {|a|
  if a.odd?
    puts 0
    exit
  end
  a / 2
}

if as2.map {|a| f(a) }.uniq.size > 1
  puts 0
  exit
end

lcm = as2.inject(&:lcm)

puts (m / lcm + 1) / 2
