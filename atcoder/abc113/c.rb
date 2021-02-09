N, M = gets.split.map(&:to_i)
PY = M.times.map { gets.split.map(&:to_i) }

py2 = PY.each_with_index.map.sort {|(p_y1, i1), (p_y2, i2)|
  p_y1 <=> p_y2
}

index = 1
prev_p = 0
ans = py2.inject({}) {|acc, (py, i)|
  if prev_p == py.first
    index += 1
  else
    index = 1
    prev_p = py.first
  end
  acc[i] = "%06d%06d" % [py.first, index]
  acc
}

M.times do |i|
  puts ans[i]
end
