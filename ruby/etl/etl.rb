# :nodoc:
module ETL
  def self.transform(legacy_data)
    legacy_data.each_with_object({}) do |(score, letters), transformed_data|
      letters.each { |letter| transformed_data[letter.downcase] = score }
    end
  end
end

module BookKeeping
  VERSION = 1
end
