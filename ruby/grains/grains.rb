# :nodoc:
module Grains
  NUMBER_OF_SQUARES = 64

  def self.square(number)
    raise ArgumentError unless number.between?(1, NUMBER_OF_SQUARES)

    2**(number - 1)
  end

  def self.total
    2**NUMBER_OF_SQUARES - 1
  end
end

module BookKeeping
  VERSION = 1
end
