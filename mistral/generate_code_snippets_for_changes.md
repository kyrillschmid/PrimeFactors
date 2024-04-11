{
"file": "src/prime_factors/primes.py",
"code_snippet": "[1]\n1: def is_prime(n: int) -> bool:\n2: if n <= 1:\n3: return False\n4: for i in range(2, int(n**0.5)+1):\n5: if n % i == 0:\n6: return False\n7: return True\n\n8: def generate(n: int):\n9: prime_factors = [1]\n10: prime = 2\n11: while len(prime_factors) * prime <= n:\n12: if is_prime(prime) and n % prime == 0:\n13: prime_factors.append(prime)\n14: prime *= is_prime(prime + 1)\n15: return prime_factors"
}