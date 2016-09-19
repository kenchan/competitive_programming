s = STDIN.gets.chop

puts s.each_char.inject([]) {|array, c|
  l = array.last
  if l == nil
    array << [c, 1]
  elsif l.first == c
    l[1] = l[1] + 1
  else
    array << [c, 1]
  end
  array
}.join
