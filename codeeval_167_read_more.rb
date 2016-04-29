File.read(ARGV[0]).each_line do |line|
  if line.chomp.length <= 55
    puts line.chomp
  else
    line = line.chomp[0...40]
    puts "#{line[0...(line.rindex(' ') ? line.rindex(' ') : 40)]}" \
         '... <Read More>'
  end
end
