# :nodoc:
class Series
  def initialize(sequence)
    @sequence = sequence
  end

  def slices(length)
    raise ArgumentError unless @sequence.size >= length

    @sequence.chars.each_cons(length).map(&:join)
  end
end
