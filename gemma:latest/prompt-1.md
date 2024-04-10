System Prompt:
----------------
You are an expert software engineer capable of detecting lines to be changed in files. Detect the lines that need to be changed in the files based on the issue description. Please respond with your analysis directly in JSON format The JSON schema should include: {'file': string (full path to file), 'lines_to_be_changed_in_original_and_changed_file': array of strings (@@ -1,2 +1,10 @@)}.

User Prompt:
--------------
Please create a detailed implementation proposal for the described task and the following issue based on the provided code base.
Code Base: src/
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

Issue: Implement prime factorization of a given number

Affected files: ```json
{
  "files": {
    "src/prime_factors/primes.py": {"lines": [1, 2]},
    "src/prime_factors/__main__.py": {"lines": None},
    "src/prime_factors/__pycache__/primes.cpython-312.pyc": {"lines": None},
    "src/prime_factors.egg-info/PKG-INFO": {"lines": None},
    "src/prime_factors.egg-info/SOURCES.txt": {"lines": None},
    "src/prime_factors.egg-info/entry_points.txt": {"lines": None},
    "src/prime_factors.egg-info/top_level.txt": {"lines": None},
    "src/prime_factors.egg-info/dependency_links.txt": {"lines": None},
    "tests/main_test.py": {"lines": [1, 3, 4, 6, 7, 8, 10, 11, 13, 14, 16, 17, 18, 20, 21]}
  }
}
```

**Explanation:**

The files that need to be changed are:

* `src/prime_factors/primes.py`: Lines 1 and 2 need to be changed to implement the prime factorization algorithm.
* `tests/main_test.py`: Lines 3, 4, 6, 7, 8, 10, 11, 13, 14, 16, 17, 18, 20, and 21 need to be changed to test the newly implemented prime factorization algorithm.
