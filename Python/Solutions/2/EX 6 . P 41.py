for n in range(1,1000):
 sum_of_divisors=0
 for i in range(1,n):
    if n % i==0:
        sum_of_divisors += i
 if sum_of_divisors ==n:
    print(n," is a perfect number")
