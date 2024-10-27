import math

def score(x, y):
    r = math.sqrt((x ** 2) + (y ** 2))
    if r <= 1: return 10
    if r <= 5: return 5
    if r <= 10: return 1
    return 0

# def score(x, y):
#     r = ((x ** 2) + (y ** 2)) ** 0.5
#     return (r <= 1) * 5 + (r <= 5) * 4 + (r <= 10) * 1

print(score(3,4))