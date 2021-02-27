N = gets.to_i
APX = N.times.map { gets.split.map(&:to_i) }

prices = APX.map do |a, price, x|
  if a < x
    price
  else
    10 ** 9 + 1
  end
end

puts prices.all? {|price| price == 10 ** 9 + 1} ? -1 : prices.min
