module Complement
  def self.of_dna(strand)
    return '' unless strand =~ /^[GCTA]+$/

    nucleotide_map = { 'G' => 'C', 'C' => 'G', 'T' => 'A', 'A' => 'U' }
    strand.gsub(/./) { |nucleotide| nucleotide_map[nucleotide] }
  end
end

module BookKeeping
  VERSION = 4
end
