File.read(ARGV[0]).each_line do |line|
  arr = line.chomp.split(' ')
  arr.map { |e| e[0], e[-1] = e[-1], e[0] }
  puts arr.join(' ')
end
