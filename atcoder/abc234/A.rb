# https://atcoder.jp/contests/abc234/tasks/abc234_a


#def f(x)
#  x ** 2 + 2 * x + 3
#end
#
#t = gets.to_i
#
#puts f(f(f(t) + t) + f(f(t)))

t=gets.to_i
f=->x{(x+2)*x+3}
p f[f[f[t]+t]+f[f[t]]]
