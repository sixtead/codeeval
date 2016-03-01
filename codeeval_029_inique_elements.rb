File.open(ARGV[0]).each_line do |line|
  next if line.chomp.empty?
  puts numbers = line.chomp.split(',').uniq.join(',')
end
