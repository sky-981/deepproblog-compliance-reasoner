parent(tom, bob).
parent(bob, ann).
parent(bob, sam).

grandparent(X, Y) :- parent(X, Z), parent(Z, Y).

% a query with a variable asks for ALL matching answers, not just one
query(parent(bob, X)).
query(grandparent(tom, ann)).
query(grandparent(tom, sam)).

% output: parent(bob,ann): 1, parent(bob,sam): 1, grandparent(tom,ann): 1, grandparent(tom,sam): 1
% the variable query expanded into one result line per matching answer
