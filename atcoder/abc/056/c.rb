X = gets.to_i

1.upto(X) do |i|
  if X <= (1 + i) * i / 2
    puts i
    exit
  end
end
