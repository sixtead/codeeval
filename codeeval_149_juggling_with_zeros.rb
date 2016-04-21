File.read(ARGV[0]).each_line do |line|
  arr =  line.chomp.split(' ').partition.with_index(1) { |e, i| i.odd? }
  flag = arr.first
  seq_of_zrs = arr.last

  number = ''
  flag.zip(seq_of_zrs) { |f, z| number << (f.eql?('0') ? z : '1' * z.length) }
  puts number.to_i(2)
end
