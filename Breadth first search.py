graph={"a":["b","c","d"],
       "b":["e","f"],
       "c":["g","i"],
       "d":["j"],
       "e":[],
       "f":['h'],
       "g":[],
       "i":[],
       "j":[],
       "h":[]
       }
def bfs(visit_complete,graph,current_node):
    visit_complete.append(current_node)
    queue=[]
    queue.append(current_node)
    while queue:
        s=queue.pop(0)
        print(s)
        for neighbour in graph[s]:
            if neighbour not in visit_complete:
                visit_complete.append(neighbour)
                queue.append(neighbour)
bfs([],graph,'a')
