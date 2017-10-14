class Sieve
  def initialize(limit)
    @limit = limit
  end

  def primes
    (2..@limit).inject((2..@limit).to_a) do |candidate_list, n|
      confirmed_index = candidate_list.index(n ** 2) || -1
      confirmed_primes = candidate_list[0...confirmed_index]
      search_space = candidate_list[confirmed_index..-1]
      filtered = search_space.select { |candidate| candidate == n || candidate % n != 0 }
      confirmed_primes + filtered
    end
  end
end

module BookKeeping
  VERSION = 1
end
