# :nodoc:
class Trinary
  def initialize(trinary)
    @trinary = trinary
  end

  def to_decimal
    return 0 unless @trinary =~ /\A(0|1|2)+\z/

    @trinary.each_char.inject(0) { |decimal, trit| decimal * 3 + trit.to_i }
  end
end

module BookKeeping
  VERSION = 1
end
