{
  "file": "src/prime_factors/primes.py",
  "lines_to_be_changed_in_original_and_changed_file": [
    "@@ -1,2 +1,10 @@",
    "-    return []",
    "+    factors = []",
    "+    divisor = 2",
    "+    while divisor ** 2 <= n:",
    "+        while n % divisor == 0:",
    "+            factors.append(divisor)",
    "+            n //= divisor",
    "+        divisor += 1",
    "+    if n > 1:",
    "+        factors.append(n)",
    "+    return factors"
  ]
}