File.read(ARGV[0]).each_line do |line|
  wines = line.chomp.split(' | ')[0].split(' ')

  counted_letters = Hash.new(0)
  line.chomp.split(' | ')[1].chars
                            .each { |letter| counted_letters[letter] += 1 }

  matched_wines = wines.map do |wine|
    wine if counted_letters.map { |e| wine.count(e[0]) >= e[1] }.all?
  end .compact

  puts matched_wines.empty? ? 'False' : matched_wines.join(' ')
end
