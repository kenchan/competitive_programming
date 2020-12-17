H, W = gets.split.map(&:to_i)
a = H.times.map { gets.chomp.split('') }

H.times do |i|
  a.delete_at(H - i  - 1) if a[H - i - 1].all?('.')
end

W.times do |i|
  if a.all? {|n| n[W - i - 1] == '.' }
    a.each do |n|
      n.delete_at(W - i - 1)
    end
  end
end

a.each do |n|
  puts n.join
end
