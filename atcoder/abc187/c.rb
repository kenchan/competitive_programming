require 'set'

N = gets.to_i
S = N.times.map { gets.chomp }

strings = Set.new

ans = S.detect {|s|
  includes = s.start_with?('!') ? strings.include?(s.delete('!')) : strings.include?("!#{s}")
  if includes
    true
  else
    strings << s
    false
  end
}

if ans
  puts ans.delete('!')
else
  puts 'satisfiable'
end
