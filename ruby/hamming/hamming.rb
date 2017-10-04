class Hamming
  def self.compute(sequence_1, sequence_2)
    raise ArgumentError unless sequence_1.length == sequence_2.length
    
    (0...sequence_1.length).count { |i| sequence_1[i] != sequence_2[i] }
  end
end
