### e-maxx algo

My implementation in ruby of some [algorithms](http://e-maxx.ru/algo/).

As soon as Ruby has very effective implementation of 
- sorting (which is implemented by C quick_sort)
- exponentaion (2 ** 64 is evaluated by binary exponentaion method)
- primary numbers

I've implemented:
- fast evaluating of N'th fibonacci number, e.g. `Emaxx.fast_fib(10) # => 89`. Complexity - `O(lgN)`.
- inverse number by module, e.g. `5.mod_inv(3) # => 2`. Complexity - `O(lgN)`.
- gcd (Euclid's algorithm), e.g. `Emaxx.gcd(12,18) # => 6`.
- extended gcd, `Emaxx.gcd_ext(12,18) # => {:x => -1, :y => 1, :gcd => 6}`.
- lcm (using gcd), e.g. `Emaxx.lcm(12,18) # => 36`.
- Gray numbers, e.g. `12.gray # => 10; 10.gray_inv # => 12`.
