require './emaxx'

puts Emaxx.fast_fib(7)

puts 15.mod_inv(8)

x = 15.gray
puts x
puts x.gray_inv

t = %w{A A A B B A A B B B C C C C C}
p t
p t.compact_and_count!