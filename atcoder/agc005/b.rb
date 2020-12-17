n = STDIN.gets.to_i
a = STDIN.gets.split(' ').map(&:to_i)
s = 0

n.times do |l|
  c = a.length
  for r in l...a.length do
    if a[r] < c
      c = a[r]
    end
    s = s + c
  end
end

puts s
