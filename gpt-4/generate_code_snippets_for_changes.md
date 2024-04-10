{
  "file": "src/prime_factors/primes.py",
  "code_snippet": "def generate(n: int):\n    factors = []\n    divisor = 2\n    while divisor ** 2 <= n:\n        while n % divisor == 0:\n            factors.append(divisor)\n            n //= divisor\n        divisor += 1\n    if n > 1:\n        factors.append(n)\n    return factors"
}