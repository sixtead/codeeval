File.read(ARGV[0]).each_line do |line|
  data = line.chomp.scan(/(\w+):\s(\d+)/).to_h
  result = (3 * data['Vampires'].to_i +
            4 * data['Zombies'].to_i +
            5 * data['Witches'].to_i) *
           data['Houses'].to_i /
           (data['Vampires'].to_i +
            data['Zombies'].to_i +
            data['Witches'].to_i)
  puts result
end
