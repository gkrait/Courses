#Defining class variables: We can create variables that are shared by the whole class
# and we can also change them for certain objects.
class Employee:
  number_of_employees=0   # this variable is shred for all instants of a clase
  promotion_rate=1.04
  def __init__(self,first,name,salary):   
    self.name=name
    self.first=first
    self.salary=salary
    self.email= first +"."+ name + "@company.com"
    Employee.number_of_employees += 1   #number_of_employees increases by 1 every time we define a new instance



     
print(Employee.number_of_employees) #returns zero
Emp1=Employee("Marc","lorenz",1600)
Emp2=Employee("Mira","Mado",1500)
print(Employee.number_of_employees) #returns 2



#changing a class variable locally for an instance 
Emp1.promotion_rate=1.1
print(Emp1.promotion_rate)
print(Emp2.promotion_rate)
