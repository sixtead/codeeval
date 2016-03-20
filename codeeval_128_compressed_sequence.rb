File.read(ARGV[0]).each_line do |line|
  numbers = line.chomp.split(' ')
  compressed_numbers = []

  check_number = numbers.pop
  count = 1
  count_and_number = [count, check_number]

  until numbers.empty?
    popped_number = numbers.pop
    if check_number != popped_number
      check_number = popped_number
      count = 1
      compressed_numbers << count_and_number
      count_and_number = [count, popped_number]
    elsif check_number == popped_number
      count += 1
      count_and_number = [count, popped_number]
    end
  end
  compressed_numbers << count_and_number
  puts compressed_numbers.reverse.join(' ')
end
