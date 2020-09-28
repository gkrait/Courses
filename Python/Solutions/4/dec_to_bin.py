n=eval(input("Enter the number "))
t=n
n_binary=""
while t !=0:
     n_binary=str(t % 2)+n_binary
     t=t//2
print(n_binary)     