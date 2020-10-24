N = gets.to_i

current = 2

(N - 1).times do
  current = current * 2
end

puts "0.#{'0' * (N - current.to_s.length)}#{current.to_s}"
