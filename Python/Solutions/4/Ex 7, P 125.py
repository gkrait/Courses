from random import randint
def rand_ndigits(n):
	return randint(10**(n-1),10**n-1)


n=eval(input())	
print(rand_ndigits(n))