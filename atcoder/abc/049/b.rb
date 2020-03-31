H, W = gets.split.map(&:to_i)

C = H.times.map {
  gets.split
}

C.each do |c|
  2.times do
    puts c
  end
end
