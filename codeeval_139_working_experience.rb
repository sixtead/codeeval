require 'date'

File.read(ARGV[0]).each_line do |line|
  work_periods = line.chomp.split('; ').map { |e| e.split('-') }.map do |e|
    [Date.parse(e[0]), Date.parse(e[1]).next_month.prev_day]
  end.sort

  p work_periods.inject([]) { |a, e| a << (e[0]..e[1]).to_a }
    .flatten.uniq.count / 365
end
