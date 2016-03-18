File.read(ARGV[0]).each_line do |line|
  words = line.chomp.split('  ')

  morse = {}
  morse[:l] = 'E' #     level 1
  morse[:ll] = 'I' #      level 2
  morse[:lll] = 'S' #       level 3
  morse[:llll] = 'H' #        level 4
  morse[:lllll] = '5' #         level 5
  morse[:llllr] = '4' #         level 5
  morse[:lllr] = 'V' #        level 4
  morse[:lllrr] = '3' #         level 5
  morse[:llr] = 'U' #       level 3
  morse[:llrl] = 'F' #        level 4
  morse[:llrrr] = '2' #         level 5
  morse[:lr] = 'A' #      level 2
  morse[:lrl] = 'R' #     level 2
  morse[:lrll] = 'L' #      level 3
  morse[:lrr] = 'W' #     level 2
  morse[:lrrl] = 'P' #      level 3
  morse[:lrrr] = 'J' #      level 3
  morse[:lrrrr] = '1' #       level 4
  morse[:r] = 'T' #     level 1
  morse[:rl] = 'N' #      level 2
  morse[:rll] = 'D' #       level 3
  morse[:rlll] = 'B' #        level 4
  morse[:rllll] = '6' #         level 5
  morse[:rllr] = 'X' #        level 4
  morse[:rlr] = 'K' #       level 3
  morse[:rlrl] = 'C' #        level 4
  morse[:rlrr] = 'Y' #        level 4
  morse[:rr] = 'M' #      level 2
  morse[:rrl] = 'G' #       level 3
  morse[:rrll] = 'Z' #        level 4
  morse[:rrlll] = '7' #         level 5
  morse[:rrlr] = 'Q' #        level 4
  morse[:rrr] = 'O' #       level 3
  morse[:rrrll] = '8' #         level 5
  morse[:rrrrl] = '9' #         level 5
  morse[:rrrrr] = '0' #         level 5

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
