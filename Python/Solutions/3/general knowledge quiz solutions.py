Countries=['Afghanistan','Albania', 'Argentina','Austria','Bahamas','Bahrain','Bangladesh','Barbados','Belarus','Belgium','Bermuda','Bhutan','Bolivia']
Capital=["Kabul",'Tirana','Buenos Aires','Vienna','Nassau','Manama','Dhaka','Bridgetown','Minsk','Brussels','Hamilton','Thimphu','Sucre']
Currency=["Afghani","Lek", "Peso","Euro","Bahamian Dollar","Bahraini dinar","Taka","Barbadian Dollar","Belarusian ruble","Euro","Bermudian Dollar","Bhutanese ngultrum","Boliviano"]
Continent=["Asia","Europe",'  ',"Europe","North America","Asia","Asia","North America","Europe","Europe","North America","Asia","South America"]

C=[Countries,"Capital","Currency","Continent"]	
S=[Countries,Capital,Currency,Continent]
score= 0
correct_answers=[]
wrong_answers=[]			
from random import randint	
for i in range(10):
   question_type = randint(1,3)
   country_index=randint(0,12)
   Answer=input("what is the "+ C[question_type]+" of "+ C[0][country_index]+"? ")
   if Answer== (S[question_type][country_index]) :
   	
   	score+=1
   	print("Correct! \n")
   else:
   	wrong_answers.append("Question " + str(i)+": The "+  C[question_type]+" of "+ C[0][country_index]+" is "+S[question_type][country_index])
   	print("Wrong! \n") 
print("your score is "+ str(score))
print("Corrections:")
for i in range(len(wrong_answers)):
  print(wrong_answers[i])

