s = gets.chomp

words = %w(dream dreamer erase eraser)

loop do
  if s == ''
    puts 'YES'
    exit
  end

  suffix = words.find {|w| s.end_with?(w) }

  if suffix
    s.delete_suffix!(suffix)
  else
    puts 'NO'
    exit
  end
end
