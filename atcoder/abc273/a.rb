puts gets.to_i.downto(1).inject(1) {|acc, i| acc * i }
