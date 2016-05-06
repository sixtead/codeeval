def x_direction(current_x, overlook_x)
  case
  when overlook_x > current_x then 'E'
  when overlook_x < current_x then 'W'
  else ''
  end
end

def y_direction(current_y, overlook_y)
  case
  when overlook_y > current_y then 'N'
  when overlook_y < current_y then 'S'
  else ''
  end
end

def find_direction(current_x, current_y, overlook_x, overlook_y)
  x_dir = x_direction(current_x, overlook_x)
  y_dir = y_direction(current_y, overlook_y)
  "#{y_dir}#{x_dir}".empty? ? 'here' : "#{y_dir}#{x_dir}"
end

File.read(ARGV[0]).each_line do |line|
  current_x = line.chomp.split(' ')[0].to_i
  current_y = line.chomp.split(' ')[1].to_i
  overlook_x = line.chomp.split(' ')[2].to_i
  overlook_y = line.chomp.split(' ')[3].to_i

  puts find_direction(current_x, current_y, overlook_x, overlook_y)
end
