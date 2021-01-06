N = gets.to_i
b = gets.split.map(&:to_i)

ans = []

while b.size > 0
  a = nil
  (b.size - 1).downto(0) do |i|
    if b[i] == i + 1
      a = b.delete_at(i)
      break
    end
  end

  if a
    ans << a
  else
    puts '-1'
    exit
  end
end

puts ans.reverse.join("\n")
