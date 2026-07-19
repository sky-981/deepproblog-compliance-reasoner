0.6::rain.
0.3::sprinkler.

% two clauses for the same head behave like a probabilistic OR
wet_grass :- rain.
wet_grass :- sprinkler.

query(wet_grass).

% output: wet_grass: 0.72 -- matches 1 - (1-0.6)*(1-0.3), not 0.6 + 0.3
