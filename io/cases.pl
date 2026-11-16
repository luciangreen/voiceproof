:- module(cases, [title/1, case/3]).
:- use_module('../prolog/voiceproof').
:- use_module(engine).
title('voiceproof').
f_g(0, A) :- !, rnd_pick([p, q, r, s], A).
f_g(D, F) :- D0 is D - 1, rnd_int(1, 5, K), ( K =:= 1 -> f_g(0, F) ; K =:= 2 -> f_g(D0, G), F = not(G) ; f_g(D0, G), f_g(D0, H), nth1(K, [_, _, and(G, H), or(G, H), implies(G, H)], F) ).
case(speak, [F], speak) :- rnd_int(0, 3, D), f_g(D, F).
case(hear, [W], hear) :- rnd_int(0, 3, D), f_g(D, F), speak(F, W0), ( rnd_chance(20), W0 = [_|T] -> W = T ; W = W0 ).
case(check, [P], check) :- f_g(1, A), f_g(1, B), rnd_pick([and_intro(1, 2), mp(1, 2), premise], J), ( J = and_intro(_, _) -> C = and(A, B) ; J = mp(_, _) -> ( rnd_chance(50) -> A2 = implies(B, C), f_g(0, C) ; A2 = A, f_g(0, C) ) ; f_g(0, C) ), ( var(A2) -> A2 = A ; true ), P = [step(1, A2, premise), step(2, B, premise), step(3, C, J)].
