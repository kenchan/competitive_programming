N = gets.to_i

def tfs(s = '')
  if s.to_i > N
    return 0
  end

  count = %w(3 5 7).all? {|c| s.include?(c) } ? 1 : 0
  %w(3 5 7).each do |c|
    count += tfs(s + c)
  end

  return count
end

if N < 357
  puts 0
  exit
end

puts tfs

