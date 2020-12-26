require 'prime'

N, P = gets.split.map(&:to_i)

puts Prime.prime_division(P).inject(1) {|acc, (i, c)|
  a = c / N
  if a == 0
    acc
  else
    acc * (i ** a)
  end
}
