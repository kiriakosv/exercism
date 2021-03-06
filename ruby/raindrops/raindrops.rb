#:nodoc:
class Raindrops
  SOUND_MAP = {
    3 => 'Pling',
    5 => 'Plang',
    7 => 'Plong'
  }.freeze

  def self.convert(number)
    sound_sequence = SOUND_MAP.select { |candidate| (number % candidate).zero? }
                              .values
                              .join

    return sound_sequence unless sound_sequence.empty?
    number.to_s
  end
end

module BookKeeping
  VERSION = 3
end
