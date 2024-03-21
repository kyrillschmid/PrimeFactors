{
  "file": "src/prime_factors/primes.py",
  "lines_to_be_changed_in_original_and_changed_file": [
    "@@ -1,2 +1,10 @@",
    "-    return []",
    "+    def generate(n: int):",
    "+        i = 2",
    "+        factors = []",
    "+        while i * i <= n:",
    "+            if n % i:",
    "+                i += 1",
    "+            else:",
    "+                n //= i",
    "+                factors.append(i)",
    "+        if n > 1:",
    "+            factors.append(n)",
    "+        return factors"
  ]
}