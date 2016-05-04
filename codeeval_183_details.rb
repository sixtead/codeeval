File.read(ARGV[0]).each_line do |line|
  puts line.chomp.scan(/(?:X+)(\.*)(?:Y+)/).flatten.min.length
end
