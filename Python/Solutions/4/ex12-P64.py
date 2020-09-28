import random
L=[]
for i in range(10):
  L.append(random.randint(0,1))

L_str=str(L)
longest=str(0)
while True:
  if longest in L_str:
  	longest= longest+ ", 0"
  else:
    break

longest=longest.replace(" ","")
longest=longest.replace(",","")
print("The list:",L)
print("The length of the longest zero-chain",(len(longest)-1))  