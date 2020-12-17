N = gets.to_i

S = N.times.map {
  gets.chomp
}

max = 0

h = S.group_by(&:itself).each_with_object({}) {|(k, v), acc|
 acc[v.size] ||= []
 acc[v.size] << k
 max = v.size if max < v.size
 acc
}

puts h[max].sort
