N, A, B, C, D = gets.split.map(&:to_i)
S = gets.chomp

if S[A..C] =~ /##/ || S[B..D] =~ /##/
  puts 'No'
  exit
end

if C < D
  puts 'Yes'
elsif S[(B - 2)..D] =~ /\.{3}/
  puts 'Yes'
else
  puts 'No'
end
