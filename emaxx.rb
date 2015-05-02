	require 'matrix'
	require 'prime'

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

		def self.mod_primes(m)
			r = Array.new(m)
			r[0] = 1
			1...m.each {|i| r[i] = (m-(m/i)*r[m%i]%m)%m }
			r
		end
	end

	class Fixnum
		def gray
			self^(self>>1)
		end

		def gray_inv
			g = self
			n = 0
			while g != 0
				n ^= g
				g >>= 1
			end
			n
		end
	end

	module ModularArithmetic
		def mod_inv(m)
			t = Emaxx.gcd_ext(self,m)
			x, g = t[:x], t[:gcd]
			return (g != 1) ? nil : ( x % m + m ) % m
		end

		def mod_mul(other,m)
			self * other % m
		end

		def mod_div(other,m)
			self * other.mod_inv(m) % m
		end

		def mod_add(other,m)
			(self + other)%m
		end

		def mod_sub(other,m)
			(m + self - other % m ) % m
		end
	end

	class Fixnum
		include ModularArithmetic
	end

	class Bignum
		include ModularArithmetic
	end

	module Euler
		def phi(n)
			
		end
	end

	# ["R","R","G"] => ["R","G"]
	class Array

		def complect
			self.dup.complect!
		end

		def complect!
			a = self.shift
			result = [a]
			while self.size>0
				b = self.shift
				result << b if a != b
				a = b
			end
			result
		end

		def complect_and_count
			self.dup.complect_and_count!
		end

		def complect_and_count!
			a = self.shift
			h = {sym: a, count: 1}
			result, k = [h], 1
			while self.size>0
				b = self.shift
				if a != b
					h[:count] = k
					h =  {sym: b, count: 1}
					result << h
					k = 0
				end
				a = b
				k += 1
			end
			h[:count]=k
			result
		end

	end