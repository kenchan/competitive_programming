_na, _nb = STDIN.readline.split.map(&:to_i)
sa = STDIN.readline.split.map(&:to_i)
sb = STDIN.readline.split.map(&:to_i)

puts (sa & sb).length.to_f / (sa | sb).length
