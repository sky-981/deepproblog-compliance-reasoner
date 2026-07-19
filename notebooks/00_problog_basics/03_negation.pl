person(tom).
person(bob).
person(ann).

parent(tom, bob).
parent(bob, ann).

% \+ is negation as failure: true when the goal CANNOT be proven from the program
childless(X) :- person(X), \+ parent(X, _).

query(childless(ann)).
query(childless(tom)).

% output: childless(ann): 1, childless(tom): 0
% ann has no parent(ann,_) fact anywhere, so \+ succeeds for her
