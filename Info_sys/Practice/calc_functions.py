
def factorial(n):
    n=int(n)
    ans=n
    while n>1:
        ans=ans*(n-1)
        n=n-1
    return ans

def square(n):
    n=int(n)
    return n**2

def sqrt(n):
    n=int(n)
    return n**0.5

def from_binary(n):
    return int(n,2)
