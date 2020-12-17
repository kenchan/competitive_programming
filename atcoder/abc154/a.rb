s, t = gets.split
a, b = gets.split.map(&:to_i)
u = gets.chomp

if s == u
  puts "#{a - 1} #{b}"
else
  puts "#{a} #{b - 1}"
end
