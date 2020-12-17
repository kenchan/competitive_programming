n = STDIN.gets.to_i

sp = []

i = 1
while line = STDIN.gets
  sp << [i , *line.split(" ")]
  i = i + 1
end

sp.sort_by! {|a| "#{a[1]}-#{"%03d" % (100 - a[2].to_i)}" }

puts sp.map {|a| a[0] }
