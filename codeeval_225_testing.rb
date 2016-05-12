File.read(ARGV[0]).each_line do |line|
  test_string = line.chomp.split(' | ')[0].chars
  dev_string = line.chomp.split(' | ')[1].chars

  errors = []
  test_string.zip(dev_string) { |t, d| errors << (t.eql?(d) ? nil : 'e') }

  puts case errors.compact.length
       when 0 then 'Done'
       when 1..2 then 'Low'
       when 2..4 then 'Medium'
       when 4..6 then 'High'
       when 6..test_string.length then 'Critical'
       end
end
