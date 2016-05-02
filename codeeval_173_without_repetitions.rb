File.read(ARGV[0]).each_line do |line|
  puts line.chomp.squeeze
end
