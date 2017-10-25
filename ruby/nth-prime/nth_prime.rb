# :nodoc:
module Prime
  def self.nth(n)
    raise ArgumentError unless n > 0

    prime_generator.each_with_index do |value, index|
      return value if index == n - 1
    end
  end

  def self.prime?(number)
    return false if number < 2

    (2..Math.sqrt(number).floor).none? { |n| (number % n).zero? }
  end

  def self.prime_generator
    Enumerator.new do |y|
      number = 2

      loop do
        y << number if prime? number
        number += 1
      end
    end
  end
end

module BookKeeping
  VERSION = 1
end
