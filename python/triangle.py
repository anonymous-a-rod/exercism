def valid_triangle(sides):
    if not any(sides): return False
    if not len(sides) == 3: return False
    a, b, c = sides
    return not (a + b < c or b + c < a or c + a < b)

def equilateral(sides):
    if not valid_triangle(sides): return False
    return len(set(sides)) == 1

def isosceles(sides):
    if not valid_triangle(sides): return False
    a, b, c = sides
    if a == b or a == c or b == c: return True
    return False

def scalene(sides):
    if not valid_triangle(sides): return False
    return len(set(sides)) == 3

print(equilateral([2, 2, 2]))