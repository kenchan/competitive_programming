A, B = gets.split.map(&:to_i)
S = gets.chomp

a, b = *S.split('-')

puts a&.size == A && b&.size == B ? 'Yes' : 'No'
