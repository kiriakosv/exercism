# :nodoc:
class Phrase
  def initialize(phrase)
    @phrase = phrase
  end

  def word_count
    regex = /\b[\w']+\b/
    @phrase.downcase
           .scan(regex)
           .each_with_object(Hash.new(0)) { |word, counter| counter[word] += 1 }
  end
end

module BookKeeping
  VERSION = 1
end
