File.open(ARGV[0]).each_line do |line|
  next if line.chomp.empty?
  x = line.chomp.split(',')[0].to_i
  n = line.chomp.split(',')[1].to_i
  m = n
  n += m while x > n
  puts n
end
