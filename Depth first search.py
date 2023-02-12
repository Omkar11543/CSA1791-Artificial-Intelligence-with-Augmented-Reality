graph={'a':['b','c'],
       'b':['d','e'],
       'c':['d'],
       'd':[],
       'e':['f'],
       'f':[]}
visited=set()
def dfs(visited,graph,node):
    if node not in visited:
        print(node)
        visited.add(node)
        for neighbour in graph[node]:
            dfs(visited,graph,neighbour)
dfs(visited,graph,'a')
