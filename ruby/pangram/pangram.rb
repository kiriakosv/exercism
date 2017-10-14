#:nodoc:
module Pangram
  ALPHABET_LENGTH = 26

  def self.pangram?(sentence)
    letters = sentence.downcase
                      .split('')
                      .select { |l| l =~ /[a-z]/ }

    letters.uniq.size == ALPHABET_LENGTH
  end
end

module BookKeeping
  VERSION = 5
end
