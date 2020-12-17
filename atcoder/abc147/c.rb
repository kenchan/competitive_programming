n = gets.chomp.to_i

xy_array = n.times.inject([]) do |acc, i|
  acc[i] = []
  gets.chomp.to_i.times do
    x, y = gets.split.map(&:to_i)
    acc[i] << [x - 1, y]
  end
  acc
end

[1, 0].repeated_permutation(n) do |combination|
  result = combination.each_with_index.all? {|c, i| 
    next true if c == 0

    xy_array[i].all? do |xy|
      combination[xy[0]] == xy[1]
    end
  }
  if result
    puts combination.count(1)
    exit
  end
end
