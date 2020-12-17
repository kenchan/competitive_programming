L, R = gets.split.map(&:to_i)

min = 2020

L.upto(R - 1) do |i|
  (L + 1).upto(R) do |j|
    mod = i * j % 2019
    if mod == 0
      puts 0
      exit
    end
    min = mod < min ? mod : min
  end
end

puts min
