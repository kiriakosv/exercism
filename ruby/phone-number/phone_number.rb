# :nodoc:
module PhoneNumber
  def self.clean(number)
    cleaned = number.gsub(/\D/, '').sub(/^1/, '')
    valid = /^\d{3}[2-9]\d{6}$/
    cleaned.match(valid) ? cleaned : nil
  end
end

module BookKeeping
  VERSION = 2
end
