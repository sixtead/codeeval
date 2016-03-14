File.open(ARGV[0]).each_line do |line|
  next if line.chomp.empty?

  number = line.chomp.to_i
  roman_number = ''

  until number == 0
    case
    when number >= 1000
      roman_number << 'M'
      number -= 1000
    when number >= 900
      roman_number << 'CM'
      number -= 900
    when number >= 500
      roman_number << 'D'
      number -= 500
    when number >= 400
      roman_number << 'CD'
      number -= 400
    when number >= 100
      roman_number << 'C'
      number -= 100
    when number >= 90
      roman_number << 'XC'
      number -= 90
    when number >= 50
      roman_number << 'L'
      number -= 50
    when number >= 40
      roman_number << 'XL'
      number -= 40
    when number >= 10
      roman_number << 'X'
      number -= 10
    when number >= 9
      roman_number << 'IX'
      number -= 9
    when number >= 5
      roman_number << 'V'
      number -= 5
    when number >= 4
      roman_number << 'IV'
      number -= 4
    when number >= 1
      roman_number << 'I'
      number -= 1
    end
  end
  puts roman_number
end
