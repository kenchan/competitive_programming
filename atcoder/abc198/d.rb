S1 = gets.chomp
S2 = gets.chomp
S3 = gets.chomp

chars = (S1.chars + S2.chars + S3.chars).uniq

if 10 < chars.count
  puts 'UNSOLVABLE'
  exit
end

s1, s2, s3 = S1, S2, S3

chars.each_with_index do |c, i|
  s1.gsub!(c, i.to_s)
  s2.gsub!(c, i.to_s)
  s3.gsub!(c, i.to_s)
end

i1 = s1.chars.map(&:to_i)
i2 = s2.chars.map(&:to_i)
i3 = s3.chars.map(&:to_i)

0.upto(9).to_a.permutation(chars.count) do |array|
  if array[i1[0]] == 0 || array[i2[0]] == 0 || array[i3[0]] == 0
    next
  end

  a1, a2, a3 = 0, 0, 0
  i1.each {|i| a1 = a1 * 10 + array[i] }
  i2.each {|i| a2 = a2 * 10 + array[i] }
  i3.each {|i| a3 = a3 * 10 + array[i] }

  if a1 + a2 == a3
    puts a1
    puts a2
    puts a3
    exit
  end
end

puts 'UNSOLVABLE'
