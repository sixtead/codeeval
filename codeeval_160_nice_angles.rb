File.read(ARGV[0]).each_line do |line|
  degrees = line.chomp.scan(/(\d+)(?:\..)/)[0][0].to_f
  minutes = (line.chomp.to_f - degrees) * 60
  seconds = ((minutes - minutes.to_i) * 60)
  puts format("%d\.%02d\'%02d\"", degrees.to_i, minutes.to_i, seconds.to_i)
end
