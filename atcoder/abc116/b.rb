require 'set'

s = gets.to_i

a = s
i = 1
aset = Set.new([a])

loop do
  i = i + 1
  if a.odd?
    a = 3 * a + 1
  else
    a = a / 2
  end

  if aset.include?(a)
    puts i
    exit
  else
    aset << a
  end
end
