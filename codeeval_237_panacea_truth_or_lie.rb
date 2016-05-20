File.read(ARGV[0]).each_line do |line|
  v_sign = line.chomp.split(' | ')[0].scan(/\w{2}/).map { |h| h.to_i(16) }
                                     .reduce(:+)
  av_sign = line.chomp.split(' | ')[1].scan(/\d+/).map { |b| b.to_i(2) }
                                      .reduce(:+)
  puts v_sign <= av_sign ? 'True' : 'False'
end
