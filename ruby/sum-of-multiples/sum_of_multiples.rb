# :nodoc:
class SumOfMultiples
  def initialize(*factors)
    @factors = factors
  end

  def to(limit)
    (1...limit).select do |candicate|
      @factors.any? { |factor| (candicate % factor).zero? }
    end.sum
  end
end

module BookKeeping
  VERSION = 2
end
