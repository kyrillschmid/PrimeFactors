{
        "file": "src/prime_factors/primes.py",
        "code_snippet": "def generate(n: int):\n    i = 2\n    factors = []\n    while i * i <= n:\n        if n % i:\n            i += 1\n        else:\n            n //= i\n            factors.append(i)\n    if n > 1:\n        factors.append(n)\n    return factors"
    }