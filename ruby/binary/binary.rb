# :nodoc:
module Binary
  def self.to_decimal(binary)
    raise ArgumentError unless binary =~ /^(0|1)+$/

    binary.each_char.reduce(0) { |decimal, bit| decimal << 1 | bit.to_i }
  end
end

module BookKeeping
  VERSION = 3
end
