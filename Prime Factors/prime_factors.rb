class PrimeFactors
  def self.generate(n)
    primes, candidate = [], 1
    while n > 1 and candidate += 1
      primes << candidate while n % candidate == 0 and n /= candidate
    end
    primes
  end
end
