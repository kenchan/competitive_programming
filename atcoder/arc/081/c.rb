N = gets.to_i
A = gets.split.map(&:to_i)

aa = A.tally.select {|k, v| v >= 2 }

if aa.keys.size < 2
  puts 0
  exit
end

ab = aa.sort_by {|k,v| k * -1 }

if ab[0][1] >= 4
  puts ab[0][0] ** 2
else
  puts ab[0][0] * ab[1][0]
end
