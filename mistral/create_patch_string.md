{"patch_string": "[-a, +b]\n+\n1: def generate(n: int):\n2: prime_factors = [1]\n3: prime = 2\n4: p = 0\n5: while prime * prime <= n:\n6: if n % prime == 0:\n7: prime_factors.append(prime)\n8: p += 1\n9: n //= prime\n10: prime = int(n**0.5) + 1\n11: while prime > 2 and n % prime != 0:\n12: prime -= 1\n13: if prime <= 1:\n14: break\n15: prime_factors.append(prime)\n16: n //= prime\n17: prime = int(n**0.5) + 1\n18: return prime_factors"}

  

 
 
 
 
 
 
 
 
 
 
 
 
 
