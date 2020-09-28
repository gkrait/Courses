def all_lists(n):
    Answer=[]
    if n ==1:
        Answer=[[0],[1]]
    else:
        Answer_smaller=all_lists(n-1)
        
        for list_i in Answer_smaller:
            
            Answer.append(list_i+[0])
            Answer.append(list_i+[1])
    return Answer       



n=eval(input())
print(all_lists(n))
