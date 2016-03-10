File.open(ARGV[0]).each_line do |line|
  next if line.chomp.empty?
  new_line = []
  line.chomp.split(' ').each do |word|
    new_line << word.slice(0,1).capitalize + word.slice(1..-1)
  end
  puts new_line.join(' ')
end
