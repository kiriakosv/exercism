# :nodoc:
module Grains
  NUMBER_OF_SQUARES = 64

  def self.square(position)
    raise ArgumentError unless position.between?(1, NUMBER_OF_SQUARES)

    2**(position - 1)
  end

  def self.total
    2**NUMBER_OF_SQUARES - 1
  end
end

module BookKeeping
  VERSION = 1
end
