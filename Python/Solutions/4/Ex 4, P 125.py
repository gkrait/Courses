def digitroot(n):
   n_string=str(n)
   while len(n_string) > 1:
       new_n_string=0
       for a in n_string:
           new_n_string=new_n_string+int(a)
       n_string=str(new_n_string) 
   return n_string    

n=eval(input('Enter the number '))
print('The digit root is: ',digitroot(n))   
