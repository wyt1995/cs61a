def fib_iter(n):
    pred, curr = 1, 0
    k = 0
    while k < n:
        pred, curr = curr, pred + curr
        k += 1
    return curr


def fib_recur(n):
    if n == 0 or n == 1:
        return n
    else:
        return fib_recur(n - 2) + fib_recur(n - 1)
    

fib_seq = {0: 0, 1: 1}
def fib_fast(n):
    if n not in fib_seq:
        fib_seq[n] = fib_fast(n - 2) + fib_fast(n - 1)
    return fib_seq[n]


def make_fib():
    f0, f1 = 1, 0
    while True:
        f0, f1 = f1, f0 + f1
        yield f0


def gen_fib():
    f0, f1 = 1, 0
    def next_fib():
        nonlocal f0, f1
        f0, f1 = f1, f0 + f1
        return f0
    return next_fib


def first_fibs(n):
    def generate_fib(n):
        if n == 0 or n == 1:
            return n
        else:
            return generate_fib(n - 2) + generate_fib(n - 1)
    yield from [generate_fib(i) for i in range(n)]
