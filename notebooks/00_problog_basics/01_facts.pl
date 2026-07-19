% facts: statements that are simply true, no conditions
parent(tom, bob).
parent(bob, ann).

query(parent(tom, bob)).

% output: parent(tom,bob): 1 -- a plain fact is certain, so probability is 1
