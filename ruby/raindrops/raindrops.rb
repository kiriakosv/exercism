class Raindrops
  CANDIDATES_TO_SOUNDS = {
    3 => "Pling",
    5 => "Plang",
    7 => "Plong"
  }

  def self.convert(number)
    sound_sequence = CANDIDATES_TO_SOUNDS.select { |candidate, sound| number % candidate == 0 }
                                         .values
                                         .join

    return sound_sequence unless sound_sequence.empty?
    number.to_s
  end
end

module BookKeeping
  VERSION = 3
end
