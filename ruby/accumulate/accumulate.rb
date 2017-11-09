# :nodoc:
class Array
  def accumulate
    return enum_for(:accumulate) { size } unless block_given?

    inject([]) { |accumulator, element| accumulator << yield(element) }
  end
end

module BookKeeping
  VERSION = 1
end
