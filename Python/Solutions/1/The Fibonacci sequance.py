n=eval(input("How many terms do you want? "))
if n>2:
 term_n_1=1
 term_n_2=1
 print("The Fibonacci sequance is ",term_n_1,term_n_1,end=",")
 for i in range(n-2):
    term_n=term_n_1+term_n_2
    term_n_2=term_n_1
    term_n_1=term_n
    if i==n-3:
       print(term_n)
    else:
         print(term_n, end=",")
else:
    print("The Fibonaccin sequance is ", n*"1,")
