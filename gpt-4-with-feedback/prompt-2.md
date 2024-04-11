# System Prompt

You are an expert software engineer capable of listing files to be changed. Select the files that need to be changed based on the issue description and questions and answers. Please respond with your analysis directly in JSON format The JSON schema should include: {'file': string (full path to file)}.

# User Prompt

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

Issue: The generate function does not work.
Q&A:
[
  {
    "question": "Can you provide more details on how the generate function should behave? For example, what output do you expect when different values are input?",
    "answer": "The generate function should calculate the prime factors of a given integer 'n'. The function should return a list of the prime factors in ascending order. From your tests, it seems you expect the following behavior:\n- For n=1, output should be [], since 1 has no prime factors.\n- For prime numbers like 2, 3, 5, and 7, the output should be a list containing the number itself.\n- For composite numbers like 4 (2x2), 6 (2x3), 8 (2x2x2), and 1773 (3x3x197), the output should be a list of the prime numbers that multiply to n, including repeats if necessary."
  }
]
