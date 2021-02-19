require 'prime'

Q = gets.to_i
lr = Q.times.map { gets.split.map(&:to_i) }

primes = Prime.each(10 ** 5 / 2).each_with_object([]) {|prime, obj|
  if Prime.prime?(prime * 2 - 1)
    obj << prime * 2 - 1
  end
}

lr.each do |l, r|
  li = primes.bsearch_index {|n| l <= n } || (primes.last < l ? primes.count : 0)
  ri = primes.bsearch_index {|n| r < n } || primes.count
  puts ri - li
end
