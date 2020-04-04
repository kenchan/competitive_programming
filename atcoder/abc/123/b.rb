t =  5.times.map { gets.to_i }

t.sort_by! {|i|
  i % 10.0 == 0 ? 10 : i % 10.0
}

m = t.shift

puts t.map {|i| (i / 10.0).ceil * 10 }.inject(&:+) + m
