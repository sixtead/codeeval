# class of Knight from chess
class Knight
  attr_accessor :v_pos, :h_pos

  board = []
  'a'.upto('h') { |h| '1'.upto('8') { |v| board << "#{h}#{v}" } }
  BOARD = board.freeze

  MOVES_HASH = {
    left_down: [-2, -1],
    left_up: [-2, 1],
    down_left: [-1, -2],
    up_left: [-1, 2],
    down_right: [1, -2],
    up_right: [1, 2],
    right_down: [2, -1],
    right_up: [2, 1]
  }.freeze

  def initialize(pos)
    @v_pos = pos.chars[1].to_i
    @h_pos = pos.chars[0]
  end

  def possible_moves
    MOVES_HASH.values.map do |val|
      new_pos = "#{(@h_pos.ord + val[0]).chr}#{@v_pos + val[1]}"
      new_pos if BOARD.include? new_pos
    end .compact
  end
end

File.read(ARGV[0]).each_line do |line|
  puts Knight.new(line.chomp).possible_moves.join(' ')
end
