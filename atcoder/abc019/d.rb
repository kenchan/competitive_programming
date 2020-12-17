n = STDIN.gets.to_i

answer = (1..n).to_a.combination(2).inject(0) {|l, (a, b)|
  puts "? #{a} #{b}"
  STDOUT.flush
  [l, STDIN.gets.to_i].max
}

puts "! #{answer}"
