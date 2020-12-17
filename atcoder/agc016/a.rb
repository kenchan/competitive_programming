s = gets.chomp.each_char.to_a

chars = s.uniq

counts = chars.map {|c|
  count = 0
  ss = s

  loop do
    if ss.all? {|ch| ch == ss[0]}
      break;
    end

    ss = ss.each_cons(2).map {|c1, c2|
      if c1 == c || c2 == c
        c
      else
        c1
      end
    }

    count += 1
  end

  count
}

puts counts.min
