n = gets.to_i
v = gets.split.map(&:to_i)

o, e = v.partition.with_index {|_, i| i.odd? }

ot = o.tally.to_a.sort_by {|c, n| n}
et = e.tally.to_a.sort_by {|c, n| n}

if ot.size == 1 && et.size == 1
  if ot.first[0] != et.first[0]
    puts 0
  else
    puts n / 2
  end
else
  if ot.last[0] != et.last[0]
    puts n - ot.last[1] - et.last[1]
  else
    p1 = ot.last[1] + et[et.size - 2][1]
    p2 = ot[ot.size - 2][1] + et.last[1]

    puts p1 < p2 ? n - p2 : n - p1
  end
end
