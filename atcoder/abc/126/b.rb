s = STDIN.gets

aa, bb = s.scan(/.{2}/).map(&:to_i)

if (0 < aa && aa < 13) && (0 < bb && bb < 13)
  puts 'AMBIGUOUS'
elsif 0 < aa && aa < 13
  puts 'MMYY'
elsif 0 < bb && bb < 13
  puts 'YYMM'
else
  puts 'NA'
end
