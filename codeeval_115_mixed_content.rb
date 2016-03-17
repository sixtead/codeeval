File.read(ARGV[0]).each_line do |line|
  words = line.chomp.scan(/[a-z]+/)
  digits = line.chomp.scan(/\d+/)

  if words.empty?
    puts digits.join(',')
  elsif digits.empty?
    puts words.join(',')
  else
    puts "#{words.join(',')}|#{digits.join(',')}"
  end
end
