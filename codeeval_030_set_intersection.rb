File.open(ARGV[0]).each_line do |line|
  next if line.chomp.empty?
  array_one = line.chomp.split(';')[0].split(',')
  array_two = line.chomp.split(';')[1].split(',')
  puts array_two & array_two ? (array_one & array_two).join(',') : ''
end
