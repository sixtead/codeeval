primes = []

primes << 2

3.upto 1000 do |number|
  primes_match_count = 0
  primes.each do |prime|
    if number % prime == 0
      primes_match_count += 1
      break
    end
  end
  primes << number if primes_match_count == 0
end

max_prime_polindrome = 0
primes.reverse_each do |prime|
  max_prime_polindrome = prime if (prime.to_s == prime.to_s.reverse) &&
                                  prime > max_prime_polindrome
end

p max_prime_polindrome
