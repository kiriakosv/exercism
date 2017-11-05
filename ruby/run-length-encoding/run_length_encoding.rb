# :nodoc:
module RunLengthEncoding
  def self.encode(input)
    input.gsub(/(([A-Za-z ])\2*)/) do |chunk|
      (chunk.size > 1 ? chunk.size.to_s : '') + chunk[0]
    end
  end

  def self.decode(input)
    input.gsub(/(?<times>\d*)(?<char>[A-Za-z ])/) do
      m = Regexp.last_match
      m[:times] == '' ? m[:char] : m[:char] * m[:times].to_i
    end
  end
end

module BookKeeping
  VERSION = 3
end
