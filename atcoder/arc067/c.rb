require 'prime'

def factorial(n)
  arr = [*1..n]
  loop do
    return arr[0] if arr.length == 1
    arr = arr.each_slice(2).map { |a, b| b ? a * b : a }
  end
end

N = gets.to_i

factors = Prime.prime_division(factorial(N))

puts factors.inject(1) {|acc, (_, c)| acc * (c + 1)} % (10 ** 9 + 7)
