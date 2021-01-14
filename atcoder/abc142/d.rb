require 'prime'

A, B = gets.split.map(&:to_i)

puts Prime.prime_division(A.gcd(B)).count {|i, _| Prime.prime?(i)} + 1
