n = gets.to_i
a = gets.split.map(&:to_i)

c = 0

while a.all?(&:even?)
  a.map! {|i| i / 2 }
  c += 1
end

puts c
