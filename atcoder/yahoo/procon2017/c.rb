n, k = STDIN.gets.split(' ').map(&:to_i)
a = STDIN.gets.split(' ').map(&:to_i)
s = n.times.inject([]) {|r, _| r << STDIN.gets.chomp }

if n == k
  puts ''
else
  r = a.inject(nil) {|t, i|
    str = s[i - 1]
    if t.nil?
      str
    elsif str.length < t.length
      str
    else
      t
    end
  }

  if s.select {|str| str.start_with?(r) }.size != k
    puts '-1'
  else
    (r.size + 1).times do |i|
      ss = r[0...i]
      if s.select {|str| str.start_with?(ss) }.size == k
        puts ss
        break
      end
    end
  end
end
