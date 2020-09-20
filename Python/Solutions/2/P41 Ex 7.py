from math import sqrt, floor
n=eval(input("Enter the  number n= "))
squarefree=1
for i in range(2,floor(sqrt(n))+1):
    if n % i**2==0:
        print(n," is not a square-  free")
        squarefree=0
        break
if squarefree==1:
    print(n, " is a square-free")
