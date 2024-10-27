def is_armstrong_number(number):
    string_number = str(number)
    length = len(string_number)
    return number == sum([int(n) ** length for n in string_number])

is_armstrong_number(5)