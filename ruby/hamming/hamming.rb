#:nodoc:
class Hamming
  def self.compute(sequence_one, sequence_two)
    raise ArgumentError unless sequence_one.length == sequence_two.length

    (0...sequence_one.length).count { |i| sequence_one[i] != sequence_two[i] }
  end
end
