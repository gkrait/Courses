n=eval(input("Enter the grade width "))
a=eval(input("Enter the coefficient of x "))
b=eval(input("Enter the coefficient of y "))
c=eval(input("Enter the constant "))
print("The graph of the equation ",a,"x+",b,"y+",c,"=0 is:")
for i in range(n+1):
    for j in range(n+1):
        if a*(n-i)+b*j+c==0 and j<n :
            print("*",end="")
        elif j==n :
            print("")
        else:
            print(" ",end="")
