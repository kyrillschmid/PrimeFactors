# System Prompt
You are an expert software engineer and in charge of managing github issues of a project. Some issues need clarification. Answer the questions and return your answers in a JSON  array e.g. [{"question": "original question", "answer": "your answer"}]. If there are no questions you respond with a empty JSON array.

# User Prompt
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
Questions:
[
  {
    "question": "Can you provide more details on how the generate function should behave? For example, what output do you expect when different values are input?"
  }
]
