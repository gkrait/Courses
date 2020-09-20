for i in range(8):
    if i <4:
      print(" "*(3-i),"*"*(2*i+1))
    else:
       print(" "*(i-3),"*"*(8-(2*(i-3)+1)))
