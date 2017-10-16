# frozen_string_literal: true

#:nodoc:
class Squares
  def initialize(upper_limit)
    raise ArgumentError unless upper_limit.positive?

    @upper_limit = upper_limit
  end

  def square_of_sum
    (@upper_limit * (@upper_limit + 1) / 2)**2
  end

  def sum_of_squares
    @upper_limit * (@upper_limit + 1) * (2 * @upper_limit + 1) / 6
  end

  def difference
    square_of_sum - sum_of_squares
  end
end

module BookKeeping
  VERSION = 4
end
