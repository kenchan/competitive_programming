# https://atcoder.jp/contests/abc305/tasks/abc305_f

def query(*args)
  puts "? #{args.join(' ')}"
  STDOUT.flush
  if $DEBUG
    res = 'generate response from @source'
    res.tap { |res| @responses << res }
  else
    gets.chomp
  end
end

$DEBUG = true


N, M = gets.split.map(&:to_i)

if $DEBUG
  @responses = []
  @source = gets.chomp
end

puts "! #{ans}"
STDOUT.flush

if $DEBUG
  puts "----------------------------------------"
  puts "query count: #{@responses.size}"
  puts "query results:"
  @responses.each { |res| puts res }
  puts "----------------------------------------"
end
