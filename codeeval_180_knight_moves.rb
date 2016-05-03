class Knight
  attr_accessor :v_pos, :h_pos

  BOARD = []
  'a'.upto('h') { |h| '1'.upto('8') { |v| BOARD << "#{h}#{v}" } }
  BOARD.freeze

  def initialize(pos)
    @v_pos = pos.chars[1].to_i
    @h_pos = pos.chars[0]
  end

  def possible_moves
    moves = []

    moves << "#{(@h_pos.ord - 2).chr}#{@v_pos - 1}" if BOARD.include?(
      "#{(@h_pos.ord - 2).chr}#{@v_pos - 1}")
    moves << "#{(@h_pos.ord - 2).chr}#{@v_pos + 1}" if BOARD.include?(
      "#{(@h_pos.ord - 2).chr}#{@v_pos + 1}")

    moves << "#{(@h_pos.ord - 1).chr}#{@v_pos - 2}" if BOARD.include?(
      "#{(@h_pos.ord - 1).chr}#{@v_pos - 2}")
    moves << "#{(@h_pos.ord - 1).chr}#{@v_pos + 2}" if BOARD.include?(
      "#{(@h_pos.ord - 1).chr}#{@v_pos + 2}")

    moves << "#{(@h_pos.ord + 1).chr}#{@v_pos - 2}" if BOARD.include?(
      "#{(@h_pos.ord + 1).chr}#{@v_pos - 2}")
    moves << "#{(@h_pos.ord + 1).chr}#{@v_pos + 2}" if BOARD.include?(
      "#{(@h_pos.ord + 1).chr}#{@v_pos + 2}")

    moves << "#{(@h_pos.ord + 2).chr}#{@v_pos - 1}" if BOARD.include?(
      "#{(@h_pos.ord + 2).chr}#{@v_pos - 1}")
    moves << "#{(@h_pos.ord + 2).chr}#{@v_pos + 1}" if BOARD.include?(
      "#{(@h_pos.ord + 2).chr}#{@v_pos + 1}")

    moves
  end
end

File.read(ARGV[0]).each_line do |line|
  puts Knight.new(line.chomp).possible_moves.join(' ')
end
