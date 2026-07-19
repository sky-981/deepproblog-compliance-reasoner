0.6::rain.
0.3::sprinkler.

% both goals in one body behave like a probabilistic AND
wet_grass :- rain, sprinkler.

query(wet_grass).

% output: wet_grass: 0.18 -- 0.6 * 0.3, facts are treated as independent
