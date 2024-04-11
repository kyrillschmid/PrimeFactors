System Prompt:
----------------
Act as a software engineering expert! Your job is to create patch strings for a given Python repository. Make sure to consider the line numbers in the patch!.
Please respond directly in the following JSON format: The JSON schema should include: {'patch_string': string (diff --git a/...)}. Provide nothing but the JSON output.

User Prompt:
--------------
Here is the issue description and the repo.
Issue:
Implement prime factorization of a given number

Repo:
src/
    prime_factors/
        primes.py
            1: def generate(n: int):
            2:     return []
        __main__.py
        __pycache__/
            primes.cpython-312.pyc
    prime_factors.egg-info/
        PKG-INFO
        SOURCES.txt
        entry_points.txt
        top_level.txt
        dependency_links.txt
tests/
    main_test.py
        1: from prime_factors.primes import generate
        2: 
        3: def test_generate_with_1():
        4:     assert generate(1) == []
        5: 
        6: def test_generate_with_2():
        7:     assert generate(2) == [2]
        8: 
        9: def test_generate_with_3():
        10:     assert generate(3) == [3]
        11: 
        12: def test_generate_with_4():
        13:     assert generate(4) == [2, 2]
        14: 
        15: def test_generate_with_5():
        16:     assert generate(5) == [5]
        17: 
        18: def test_generate_with_6():
        19:     assert generate(6) == [2, 3]
        20: 
        21: def test_generate_with_7():
        22:     assert generate(7) == [7]
        23: 
        24: def test_generate_with_8():
        25:     assert generate(8) == [2, 2, 2]
        26: 
        27: def test_generate_with_1773():
        28:     assert generate(1773) == [3, 3, 197]
    __pycache__/
        main_test.cpython-312-pytest-8.0.2.pyc
        main_test.cpython-312-pytest-8.1.1.pyc

Here is the output from a previous task that might be useful:
Code snippets for changes: {
"file": "src/prime_factors/primes.py",
"code_snippet": "[1]\n1: def is_prime(n: int) -> bool:\n2: if n <= 1:\n3: return False\n4: for i in range(2, int(n**0.5)+1):\n5: if n % i == 0:\n6: return False\n7: return True\n\n8: def generate(n: int):\n9: prime_factors = [1]\n10: prime = 2\n11: while len(prime_factors) * prime <= n:\n12: if is_prime(prime) and n % prime == 0:\n13: prime_factors.append(prime)\n14: prime *= is_prime(prime + 1)\n15: return prime_factors"
}
