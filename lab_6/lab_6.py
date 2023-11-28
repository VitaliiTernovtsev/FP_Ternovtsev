Y = lambda f: (lambda x: x(x))(lambda y: f(lambda *args: y(y)(*args)))

factorial = Y(lambda f: lambda n: 1 if n == 0 else n * f(n - 1))

result = factorial(6)
print("factorial(6):", result)
