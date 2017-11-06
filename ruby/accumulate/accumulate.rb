# :nodoc:
class Array
  def accumulate
    inject([]) { |accumulator, element| accumulator << yield(element) }
  end
end

module BookKeeping
  VERSION = 1
end
