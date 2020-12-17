N, M = gets.split.map(&:to_i)

LR = M.times.map { gets.split.map(&:to_i) }

al = 1
ar = N

LR.each do |l, r|
  al = al < l ? l : al
  ar = r < ar ? r : ar

  if ar < al
    puts 0
    exit
  end
end

puts ar - al + 1
