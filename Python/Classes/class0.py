#Defining the class structure
class Employee:
  """The following method (function) is a constructor of the classes instant.
  It is called automatically in every time we define an instance of the class"""
  def __init__(self,first,name,salary):
    self.name=name
    self.first=first
    self.salary=salary
    self.email= first +"."+ name + "@company.com"  
  """ This method is applied to an employee.
   It raises its salary 4%"""
  def salary_promotion(self):
     self.salary=self.salary*1.04

     
#Defining an enstance:   
Emp1=Employee("Marc","lorenz",1600)
Emp2=Employee("Mira","Mado",1500)



#Reaching an attribute of an instance
print(Emp1.first)
print(Emp1.email)
