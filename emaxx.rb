require 'matrix'

module Emaxx

	def self.gcd(a,b)
		while b!=0
			a, b = b, a%b
		end
		a
	end

	def self.lcm(a,b)
		a / gcd(a,b) * b
	end

	def self.gcd_ext(a,b)
		return {x: 0, y: 1, gcd: b} if a == 0
		t = gcd_ext(b%a, a)
		x1, y1 = t[:x], t[:y]
		x, y = y1 - (b/a)*x1, x1
		{x: x, y: y, gcd: t[:gcd]}
	end

	def self.fast_fib(n)
		p = Matrix[[0,1],[1,1]]
		t = p ** (n-1)
		ff = t * Matrix[[1],[1]]
		ff[1,0]
	end
end