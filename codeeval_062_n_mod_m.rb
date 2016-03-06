File.open(ARGV[0]).each_line do |line|
  next if line.chomp.empty?
  n = line.chomp.split(',')[0].to_i
  m = line.chomp.split(',')[1].to_i

  n -= m while n > m
  puts n < m ? n : 0
end
