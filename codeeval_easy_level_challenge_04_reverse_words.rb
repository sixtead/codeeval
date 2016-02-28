File.open(ARGV[0]).each_line do |line|
  next if line.chomp.empty?
  puts line.chomp.split(' ').reverse.join(' ')
end
