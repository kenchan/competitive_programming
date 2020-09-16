puts gets.chomp.each_char.tally.all? {|_, c| c.even? } ? 'Yes' : 'No'
