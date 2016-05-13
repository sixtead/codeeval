File.read(ARGV[0]).each_line do |line|
  town_teams = line.chomp.split(' | ').map(&:split)

  occurances = {}

  town_teams.each.with_index(1) do |aa, i|
    aa.each do |a|
      occurances[a.to_i] ? occurances[a.to_i] << i : occurances[a.to_i] = [i]
    end
  end

  result = []
  Hash[occurances.sort].each_pair do |key, val|
    result << "#{key}:#{val.join(',')};"
  end
  puts result.join(' ')
end
