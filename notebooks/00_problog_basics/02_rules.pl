parent(tom, bob).
parent(bob, ann).

% rule: head is true when every condition in the body is true
grandparent(X, Y) :- parent(X, Z), parent(Z, Y).

query(grandparent(tom, ann)).

% output: grandparent(tom,ann): 1 -- derived via Z=bob, never stated directly as a fact
