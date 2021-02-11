n = gets.to_i
a = gets.split.map(&:to_i)

a.sort!

i = a.bsearch_index {|e| a.last / 2.0 <= e }

if 1 < i
  n = (a.last / 2.0 - a[i]).abs < (a.last / 2.0 - a[i - 1]).abs ? a[i] : a[i - 1]
elsif i == n - 1
  n = a[i - 1]
else
  n = a[i] || a.first
end

puts "#{a.last} #{n}"
