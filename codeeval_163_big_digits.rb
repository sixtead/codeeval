def zzip(arr1, arr2)
  arr1.zip(arr2) { |v1, v2| v1 << v2 }
  arr1
end

File.read(ARGV[0]).each_line do |line|
  zero  = %w(-**-- *--*- *--*- *--*- -**-- -----)
  one   = %w(--*-- -**-- --*-- --*-- -***- -----)
  two   = %w(***-- ---*- -**-- *---- ****- -----)
  three = %w(***-- ---*- -**-- ---*- ***-- -----)
  four  = %w(-*--- *--*- ****- ---*- ---*- -----)
  five  = %w(****- *---- ***-- ---*- ***-- -----)
  six   = %w(-**-- *---- ***-- *--*- -**-- -----)
  seven = %w(****- ---*- --*-- -*--- -*--- -----)
  eight = %w(-**-- *--*- -**-- *--*- -**-- -----)
  nine  = %w(-**-- *--*- -***- ---*- -**-- -----)
  res   = Array.new(6) { '' }

  line.chomp.scan(/\d/).each do |digit|
    case digit.to_i
    when 0 then zzip(res, zero)
    when 1 then zzip(res, one)
    when 2 then zzip(res, two)
    when 3 then zzip(res, three)
    when 4 then zzip(res, four)
    when 5 then zzip(res, five)
    when 6 then zzip(res, six)
    when 7 then zzip(res, seven)
    when 8 then zzip(res, eight)
    when 9 then zzip(res, nine)
    end
  end
  puts res
end
