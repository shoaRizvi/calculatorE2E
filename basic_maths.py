def str_to_int(a: str) -> int:
    return int(a)


def int_to_str(a: int) -> str:
    return str(a)

def add_two_numbers(a: str, b: str) -> str:
    a = str_to_int(a)
    b = str_to_int(b)
    c = a + b
    d = int_to_str(c)
    return d

def subtract_two_numbers(a: str, b: str) -> str:
    a = str_to_int(a)
    b = str_to_int(b)
    c = a - b
    d = int_to_str(c)
    return d

def multiply_two_numbers(a: str, b: str) -> str:
    a = str_to_int(a)
    b = str_to_int(b)
    c = a * b
    d = int_to_str(c)
    return d