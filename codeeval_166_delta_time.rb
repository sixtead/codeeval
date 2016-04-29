require 'time'
File.read(ARGV[0]).each_line do |line|
  t = line.chomp.split(' ').map { |e| Time.parse(e) }
  puts Time.at(t.max - t.min).utc.strftime('%H:%M:%S')
end
