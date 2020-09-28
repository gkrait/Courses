#Inheritance
"""Suppose we want to define a new class that is a
a special case of the original one, for example, we want to define a class
of developers that are already employees."""
class Employee:
  def __init__(self,first,name,salary):   
    self.name=name
    self.first=first
    self.salary=salary
    self.email= first +"."+ name + "@company.com"
   

class Developer(Employee):    #creating a new class that is a sun of the class Employee
  def __init__(self,first,name,salary,pro_lang):
    Employee.__init__(self,first,name,salary)
    self.pro_lang=pro_lang


class Manager(Employee):    #creating a new class that is a sun of the class Employee
  def __init__(self,first,name,salary,employees=None):
    Employee.__init__(self,first,name,salary)
    if employees is None:
      self.employees=[]
    else:
        self.employees=employees
  def add_employee(self,emp):
      if emp not in self.employees:
        self.employees.append(emp)
         
  def remove_employee(self,emp):
      if emp in self.employees:
        self.employees.remove(emp)
  
Emp1=Employee("Marc","lorenz",1600)
Emp2=Employee("Mira","Mado",1500)
Dev1=Developer("Sam","George",5000,"Python")
Mang1=Manager("Sam","George",5000,[Dev1,Emp1])

Mang1.add_employee(Emp2)
print(Mang1.employees)



