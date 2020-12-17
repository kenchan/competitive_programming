puts gets.split.map(&:to_i).inject(&:+) >= 22 ? 'bust' : 'win'
