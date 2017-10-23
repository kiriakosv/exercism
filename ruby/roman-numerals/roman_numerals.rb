#:nodoc:
class Integer
  NUMERAL_TO_ROMAN = {
    1000 => 'M',
    900 => 'CM',
    500 => 'D',
    400 => 'CD',
    100 => 'C',
    90 => 'XC',
    50 => 'L',
    40 => 'XL',
    10 => 'X',
    9 => 'IX',
    5 => 'V',
    4 => 'IV',
    1 => 'I'
  }.freeze

  def to_roman
    numeral = self

    NUMERAL_TO_ROMAN.keys.inject('') do |roman, key|
      how_many = numeral / key
      numeral = numeral % key
      roman << NUMERAL_TO_ROMAN[key] * how_many
    end
  end
end

module BookKeeping
  VERSION = 2
end
