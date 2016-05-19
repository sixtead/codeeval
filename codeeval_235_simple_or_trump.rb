File.read(ARGV[0]).each_line do |line|
  cards = %w(2 3 4 5 6 7 8 9 10 J Q K A)
  trump = line.chomp.split(' | ')[1]
  card1 = line.chomp.split(' | ')[0].split(' ')[0].scan(/(\d+|\w{1})(\w{1})/)
                                                  .flatten
  card2 = line.chomp.split(' | ')[0].split(' ')[1].scan(/(\d+|\w{1})(\w{1})/)
                                                  .flatten
  puts case
       when card1[1].eql?(card2[1])
         if cards.index(card1[0]) > cards.index(card2[0])
           card1.join.to_s
         elsif cards.index(card1[0]) < cards.index(card2[0])
           card2.join.to_s
         else
           "#{card1.join} #{card2.join}"
         end
       when card1[1].eql?(trump)
         card1.join.to_s
       when card2[1].eql?(trump)
         card2.join.to_s
       else
         if cards.index(card1[0]) > cards.index(card2[0])
           card1.join.to_s
         elsif cards.index(card1[0]) < cards.index(card2[0])
           card2.join.to_s
         else
           "#{card1.join} #{card2.join}"
         end
       end
end
