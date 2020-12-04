N = gets.to_i

S = N.times.map { gets.chomp }

m = a = r = c = h = 0

S.each do |s|
  case s
  when /^M/
    m += 1
  when /^A/
    a += 1
  when /^R/
    r += 1
  when /^C/
    c += 1
  when /^H/
    h += 1
  end
end

puts [m, a, r, c, h].combination(3).sum {|i, j, k| i * j * k }
