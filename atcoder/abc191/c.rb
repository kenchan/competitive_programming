H, W = gets.split.map(&:to_i)
S = H.times.map { gets.chomp.split('') }

ans = 0

(H - 1).times do |h|
  (W - 1).times do |w|
    sharp_count = [S[h][w], S[h][w + 1], S[h + 1][w], S[h + 1][w + 1]].count {|c| c == '#' }

    if sharp_count == 1 || sharp_count == 3
      ans += 1
    end
  end
end

puts ans
