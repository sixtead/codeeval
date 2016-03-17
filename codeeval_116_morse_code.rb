File.read(ARGV[0]).each_line do |line|
  words = line.chomp.split('  ')

  morse = {}
  morse[:l] = 'E'
    morse[:ll] = 'I'
      morse[:lll] = 'S'
        morse[:llll] = 'H'
          morse[:lllll] = '5'
          morse[:llllr] = '4'
        morse[:lllr] = 'V'
          morse[:lllrr] = '3'
      morse[:llr] = 'U'
        morse[:llrl] = 'F'
          morse[:llrrr] = '2'
    morse[:lr] = 'A'
    morse[:lrl] = 'R'
      morse[:lrll] = 'L'
    morse[:lrr] = 'W'
      morse[:lrrl] = 'P'
      morse[:lrrr] = 'J'
        morse[:lrrrr] = '1'
  morse[:r] = 'T'
    morse[:rl] = 'N'
      morse[:rll] = 'D'
        morse[:rlll] = 'B'
          morse[:rllll] = '6'
        morse[:rllr] = 'X'
      morse[:rlr] = 'K'
        morse[:rlrl] = 'C'
        morse[:rlrr] = 'Y'
    morse[:rr] = 'M'
      morse[:rrl] = 'G'
        morse[:rrll] = 'Z'
          morse[:rrlll] = '7'
        morse[:rrlr] = 'Q'
      morse[:rrr] = 'O'
          morse[:rrrll] = '8'
          morse[:rrrrl] = '9'
          morse[:rrrrr] = '0'

  translated_string = []

  words.each do |word|
    translated_word = ''
    word.split(' ').each do |letter|
      key = ''
      letter.each_char do |symbol|
        if symbol.eql? '.'
          key << 'l'
        elsif symbol.eql? '-'
          key << 'r'
        end
      end
      translated_word << morse[key.to_sym]
    end
    translated_string << translated_word
  end
  puts translated_string.join(' ')
end
