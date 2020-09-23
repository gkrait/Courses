alphabet = 'abcdefghijklmnopqrstuvwxyz'
key = 'xznlwebgjhqdyvtkfuompciasr'
secret_message = input( ' Enter your message: ' )
secret_message = secret_message.lower()
for c in secret_message:
   if c.isalpha():
      print(key[alphabet.index(c)],end= '' )
   else:
      print(c, end= '' )
print()      