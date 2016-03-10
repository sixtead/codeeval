File.open(ARGV[0]).each_line do |line|
  next if line.chomp.empty?
  crypted_writer_name = line.chomp.split('| ')[0]
  key = line.chomp.split('| ')[1].split(' ')
  writer_name = String.new
  key.each do |k|
    writer_name << crypted_writer_name[k.to_i - 1]
  end
  puts writer_name
end
