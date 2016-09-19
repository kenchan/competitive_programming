n = STDIN.gets.to_i

r = (2..n).to_a.inject([]) {|l, b|
  puts "? 1 #{b}"
  STDOUT.flush
  l << [b, STDIN.gets.to_i]
  l
}.sort {|a, b|
  b.last <=> a.last
}

answer = r.first.last

a = r.first.first

(1..n).to_a.each {|b|
  puts "? #{a} #{b}"
  STDOUT.flush
  answer = [answer, STDIN.gets.to_i].max
}

puts "! #{answer}"
