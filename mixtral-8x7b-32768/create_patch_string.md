{
    "patch_string": "--- a/prime_factors/primes.py\n+++ b/prime_factors/primes.py\n@@ -1,7 +1,13 @@\n def generate(n: int):\n-   return []\n+\n+\"\"\"\nGenerates prime factors of the given number.\n \n    :param n: The number to factorize.\n\n    :return: A list of prime numbers that are factors of the given number.\n\"\"\"\n     if n < 2:\n         return []\n     factors = []\n "
}