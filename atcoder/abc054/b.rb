N, M = gets.split.map(&:to_i)
A = N.times.map { gets.chomp }
B = M.times.map { gets.chomp }

0.upto(N - M) do |i|
  0.upto(N - M) do |j|
    if A[i][j..-1] =~ /^#{Regexp.escape(B[0])}/
      if (M - 1).times.all? {|k| A[i + k + 1][j..-1] =~ /^#{B[k + 1]}/ }
        puts "Yes"
        exit
      end
    end
  end
end

puts 'No'
