def Y(f):
    return (lambda x: f(lambda y: x(x)(y)))(lambda x: f(lambda y: x(x)(y)))

fib = Y(lambda f: lambda n: n if n <= 1 else f(n - 1) + f(n - 2))

result = fib(8)
print("Fibonacci(8) =", result)
