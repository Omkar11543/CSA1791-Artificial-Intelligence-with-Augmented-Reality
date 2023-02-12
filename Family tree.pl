parent(john,jim).
parent(jane,jim).
parent(jim,anna).
parent(jim,tom).
parent(tom,jessica).
grandfather(x,y):-parent(x,z),parent(z,y).
grandmother(x,y):-parent(x,z),parent(z,y).
sibling(x,y):-parent(z,x),parent(z,y),x\=y.
