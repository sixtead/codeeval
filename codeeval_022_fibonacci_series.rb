fibonacci = [0, 1]

File.open(ARGV[0]).each_line do |line|
  next if line.chomp.empty?
  n = line.chomp.to_i

  if fibonacci.length - 1 > n
    puts fibonacci[n]
  else
    fibonacci.length.upto(n) do |f_number|
      fibonacci << fibonacci[f_number - 1] + fibonacci[f_number - 2]
    end
    puts fibonacci.last
  end
end
