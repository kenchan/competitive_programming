ans = []
STDIN.readline.to_i.times.each_with_object([]) {|i, array|
  q, v = STDIN.readline.split.map(&:to_i)
  if q == 1
    array << v
  else
    ans << array.delete_at(v - 1)
  end
  array.sort!
}
puts ans
