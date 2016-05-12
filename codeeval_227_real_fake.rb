File.read(ARGV[0]).each_line do |line|
  digits_sum = line.chomp.scan(/\d/).map(&:to_i).each_with_index
                   .inject(0) { |sum, (e, i)| i.odd? ? sum + e : sum + e * 2 }
  if digits_sum % 10 == 0
    puts 'Real'
  else
    puts 'Fake'
  end
end
