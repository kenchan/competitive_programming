i = STDIN.gets.to_i

def factorial(n)
  arr = [*1..n]
  loop do
    return arr[0] if arr.length == 1
    arr = arr.each_slice(2).map { |a, b| b ? a * b : a }
  end
end

puts factorial(i) % (10 ** 9 + 7)
