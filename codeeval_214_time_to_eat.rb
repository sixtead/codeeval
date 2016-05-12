require 'time'

File.read(ARGV[0]).each_line do |line|
  puts line.chomp.split(' ').map { |e| Time.parse e }.sort { |a, b| b <=> a }
           .map { |e| e.strftime('%H:%M:%S') }.join(' ')
end
