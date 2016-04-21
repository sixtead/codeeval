current_location = 0
File.read(ARGV[0]).each_line.with_index do |line, index|
  line.chomp.tr('_', '|') if index == 0
  if index == 0
    puts line.chomp.tr('_', '|')
    current_location = line.chomp.index('_')
    next
  end
  checkpoint = line.chomp.index('C') || 100
  gate = line.chomp.index('_') || 100
  case
  when checkpoint.between?(current_location - 1, current_location + 1)
    go_throught = 'C'
    direction = '/' if checkpoint < current_location
    direction = '|' if checkpoint == current_location
    direction = '\\' if checkpoint > current_location
    current_location = checkpoint
  when gate.between?(current_location - 1, current_location + 1)
    go_throught = '_'
    direction = '/' if gate < current_location
    direction = '|' if gate == current_location
    direction = '\\' if gate > current_location
    current_location = gate
  end
  puts line.chomp.gsub(go_throught, direction)
end
