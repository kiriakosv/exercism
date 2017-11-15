# :nodoc:
class Array
  def keep
    return enum_for(:keep) { size } unless block_given?

    inject([]) { |memo, e| yield(e) ? memo << e : memo }
  end

  def discard
    return enum_for(:discard) { size } unless block_given?

    inject([]) { |memo, e| yield(e) ? memo : memo << e }
  end
end
