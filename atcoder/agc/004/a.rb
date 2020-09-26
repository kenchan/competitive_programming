A, B, C = gets.split.map(&:to_i)

if [A, B, C].any?(&:even?)
  puts 0
else
  puts [A, B, C].min(2).inject(&:*)
end
