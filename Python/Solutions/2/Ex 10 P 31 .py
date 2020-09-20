from random import *
for i in range(10):
 a=randint(1,100)
 b=randint(1,100)
 print(a,"x",b,"=",end=" ")
 answer=eval(input())
 if answer==a*b:
    print("correct!")
 else:
    print("wrong")
