File.read(ARGV[0]).each_line do |line|
  puts line.chomp.split(' | ').map { |e| e.split(' ').map(&:to_i) }
           .inject { |a, e| a.zip(e).map(&:max) }.join(' ')
end
