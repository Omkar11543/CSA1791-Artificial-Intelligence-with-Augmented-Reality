% Define the knowledge base for the Monkey and Banana Problem
location(monkey, floor).
location(banana, shelf).
location(chair, floor).

% Define the actions for the monkey
can_reach(monkey, X) :- location(monkey, floor), location(X, shelf).
can_reach(monkey, X) :- location(monkey, floor), location(chair, floor), location(X, shelf).

% Define a predicate to find the solution
solve :- can_reach(monkey, banana),
         write('The monkey can reach the banana.'), nl.
solve :- write('The monkey can not reach the banana.'), nl.
