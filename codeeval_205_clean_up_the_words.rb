File.read(ARGV[0]).each_line do |line|
  puts line.chomp.scan(/[A-Za-z]+/).flatten.map(&:downcase).join(' ')
end
