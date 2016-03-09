numbers = []
File.open(ARGV[0]).each_line do |line|
  next if line.chomp.empty?
  puts line.chomp.split(' ').map(&:to_f).sort
    .map { |e| sprintf '%.3f', e }.join(' ')
end
