### e-maxx algo

My implementation in ruby of some [algorithms](http://e-maxx.ru/algo/).

As soon as Ruby has very effective implementation of 
- sorting (which is implemented by C quick_sort)
- exponentaion (2 ** 64 is evaluated by binary exponentaion method)
- primary numbers

##### I've implemented:

###### Fast N'th fibonacci 
```ruby
Emaxx.fast_fib(10) # => 89
```

Complexity: `O(logN)`. 

###### Inverse number by module
```ruby
5.mod_inv(3) # => 2
```

Complexity: `O(logN)`.

###### gcd (Euclid's algorithm)
```ruby
Emaxx.gcd(12,18) # => 6
```

Complexity: `log min(a,b)`.

###### extended gcd

```ruby
Emaxx.gcd_ext(12,18) # => {:x => -1, :y => 1, :gcd => 6}
```

Complexity: same.

###### lcm (using gcd)

```ruby
Emaxx.lcm(12,18) # => 36
```

Complexity: same.

###### Gray's Code

```ruby
12.gray # => 10
10.gray_inv # => 12
```

Complexity: 1 - `O(1)`, 2 - `O(lgN)`.
