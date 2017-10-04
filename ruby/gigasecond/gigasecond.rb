class Gigasecond
  GIGASECOND = 10 ** 9
  
  def self.from(instant)
    instant + GIGASECOND
  end
end

module BookKeeping
  VERSION = 6
end
