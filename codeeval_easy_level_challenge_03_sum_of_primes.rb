primes = []
number = 2
primes << number

while primes.length < 1000
  number += 1
  primes_match_count = 0
  primes.each do |prime|
    if number % prime == 0
      primes_match_count += 1
      break
    end
  end
  primes << number if primes_match_count == 0
end

sum_of_primes = 0
primes.each { |prime| sum_of_primes += prime }
p sum_of_primes
