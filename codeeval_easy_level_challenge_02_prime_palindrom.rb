primes = []

primes << 2

3.upto 1000 do |number|
  primes_match_count = 0
  primes.each do |prime|
    # p "#{number} % #{prime} = #{number % prime}"
    if number % prime == 0
      primes_match_count+=1
      break
    end
  end
  primes << number if primes_match_count == 0
end

p primes
