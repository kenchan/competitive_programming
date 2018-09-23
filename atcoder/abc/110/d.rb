require 'prime'
n, m = STDIN.gets.split.map(&:to_i)
puts Prime.prime_division(m)
