import math
a=eval(input("Enter a="))
b=eval(input("Enter b="))
c=eval(input("Enter c="))

if a==0:
    if b !=0:
       print("There exsits one solution x=", (-c)/b)
    else:
        if  c==0:
                  print("Any number is a solution")
        else:
                    print("There is no solution")
else:
        Delta=b**2-4*a*c
        if  Delta < 0:
                    print("There is no real solution")
        elif   Delta==0:
                print("There is one solution x=", -b/(2*a))
        else :
                    print("There are two real solutions:")
                    print("x1=",(-b+math.sqrt(Delta))/(2*a))
                    print("x2=",(-b-math.sqrt(Delta))/(2*a))
