# :nodoc:
class Bob
  def self.hey(request)
    shout = /\A[^a-z]*[A-Z][^a-z]*\z/
    question = /\A.*\?\s*\z/
    silence = /\A\s*\z/

    case request
    when shout then 'Whoa, chill out!'
    when question then 'Sure.'
    when silence then 'Fine. Be that way!'
    else 'Whatever.'
    end
  end
end

module BookKeeping
  VERSION = 1
end
