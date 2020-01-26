n, m = STDIN.gets.split.map(&:to_i)

result = m.times.inject({}) {|acc|
  num, r = STDIN.gets.split
  acc[num] ||= [false, 0]
  unless acc[num][0] 
    if r == 'AC'
      acc[num][0] = true
    else
      acc[num][1] += 1
    end
  end
  acc
}

acs = result.values.select {|n| n[0] }

puts "#{acs.length} #{acs.inject(0) {|acc, i| acc + i[1]}}"
