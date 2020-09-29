
from string import punctuation
"""
Write a small text editor, that is, write a program that asks the user to input a text and then the program offers the following  options:

1) Count the number of words in the text.
2) Count the number of a given string in the text.
3) Count the number of punctuation marks in the text.
4) Remove the punctuation marks.
5) Remove capitalization
6) Putting the first letter in the capital in case it is not.
"""

Text=input("Enter the text: ")
option=eval(input("Enter the option: "))



if option ==1:
   print("The number of words are "+str( Text.count(" ")+1))
if option ==2 :
        search_word=input("Enter the sting that you want to count ")
        print("The number of "+ search_word+"s is " + str( Text.count(search_word) ))
if option ==3:
     num=0
     from string import punctuation
     for c in Text:
         if c in punctuation:
                num+=1
     print(num)
if option ==4:
     for c in punctuation:
         Text = Text.replace(c, '' )
         print(Text)
if option == 5: 
       E=Text.lower()
       print(E)
if option ==6:
      for i in range(len(Text)):
            if Text[i]=="." and  i !=len(Text)-1 :
                  Text=Text[:i+1]+ " "+Text[i+2].upper() +Text[i+3:]
        
                

