def gcd(m, n):
    if n == 0:
        return m
    else:
        return gcd(n, m % n)

result = gcd(9, 10)
print("НСД(9, 10) =", result)
