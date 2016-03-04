File.open(ARGV[0]).each_line do |line|
  next if line.chomp.empty?
  string = line.chomp.split(',')[0]
  char = line.chomp.split(',')[1]
  puts string.rindex(char) ? string.rindex(char) : -1
end
