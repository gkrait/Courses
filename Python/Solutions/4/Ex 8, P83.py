n=eval(input("Enter n="))
m=eval(input("Enter m="))
t1=min(n,m)
t2=max(n,m)
x=1
while 0 !=x:
   x=t2 % t1 
   t2=t1
   t1=x 

print("The GCD of "+str(n)+" and " + str(m) +" is: ",t2)   