require 'prime'

File.read(ARGV[0]).each_line do |line|
  n = line.chomp.to_i
  mersenne_primes = []

  n.downto(2) do |i|
    if Math.log2(i + 1) % 1 == 0 && Math.log2(i + 1).to_i.prime?
      mersenne_primes << i
    end
  end

  puts mersenne_primes.reverse.join(', ')
end
