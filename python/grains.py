def square(n):
    if not 1 <= n <= 64:
        raise ValueError("square must be between 1 and 64")
    return 2 ** (n - 1)


def total():
    return sum(square(n) for n in range(1, 65))
    # return 2 ** 64 -1 

