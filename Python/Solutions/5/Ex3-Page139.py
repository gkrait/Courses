class Time:
	def __init__(self,seconds):
		self.seconds=seconds
	def convert_to_minutes(self):
		  m = self.seconds // 60   
		  s = self.seconds % 60
		  return str(m)+ ":" + str(s)
	def convert_to_hours(self):	  
		h=self.seconds // 3600
		m=(self.seconds - h*3600) // 60
		s=(self.seconds - h*3600) % 60
		return str(h)+":"+str(m)+":"+str(s)



