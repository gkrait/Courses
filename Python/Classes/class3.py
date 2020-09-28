class complex:
  def __init__(self,x,y):   #a complex number is of the form x+yi
    self.x=x
    self.y=y
  def __add__(self,other):
    real=self.x+other.x
    img=self.y+other.y
    return complex(real,img) 
  def __repr__(self):
    return str(self.x)+"+"+str(self.y)+"i"

z1= complex(1,2)
z2= complex(11,4)
print(z1)
