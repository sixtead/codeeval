File.open(ARGV[0]).each_line do |line|
  next if line.chomp.empty?
  numbers = line.chomp.split(';')
  numbers.map! do |number|
    case number
    when 'zero'
      0
    when 'one'
      1
    when 'two'
      2
    when 'three'
      3
    when 'four'
      4
    when 'five'
      5
    when 'six'
      6
    when 'seven'
      7
    when 'eight'
      8
    when 'nine'
      9
    end
  end
  puts numbers.join
end
