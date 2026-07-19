0.5::coin1(heads).
0.5::coin2(heads).

both_heads :- coin1(heads), coin2(heads).

query(both_heads).

% output: both_heads: 0.25 -- 0.5 * 0.5
