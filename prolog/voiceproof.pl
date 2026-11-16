% voiceproof: read a proof aloud and hear it back. Formulas are spoken in a prefix form that
% cannot be misheard: "both A and B", "either A or B", "if A then B", "not A"; a proof step is
% "step N F by RULE [of M and K]". The same DCG speaks and parses, every formula has exactly one
% reading, and check/1 verifies the proof (premise, modus ponens, and-introduction).
%?- speak(implies(p, and(q, r)), W).    % W = [if, p, then, both, q, and, r]
%?- hear([not, either, p, or, q], F).   % F = not(or(p, q))
:- module(voiceproof, [speak/2, hear/2, formula//1, step//1, speak_proof/2, hear_proof/2, check/1]).
:- use_module(library(lists)).
:- use_module(library(apply)).

atom_f(A) :- member(A, [p, q, r, s]).

formula(A) --> [A], { atom_f(A) }.
formula(not(F)) --> [not], formula(F).
formula(and(F, G)) --> [both], formula(F), [and], formula(G).
formula(or(F, G)) --> [either], formula(F), [or], formula(G).
formula(implies(F, G)) --> [if], formula(F), [then], formula(G).

speak(F, Ws) :- phrase(formula(F), Ws), !.
hear(Ws, F) :- phrase(formula(F), Ws).

step(step(N, F, premise)) --> [step, N], formula(F), [by, premise].
step(step(N, F, mp(A, B))) --> [step, N], formula(F), [by, modus, ponens, of, A, and, B].
step(step(N, F, and_intro(A, B))) --> [step, N], formula(F), [by, conjunction, of, A, and, B].

speak_proof(Ps, Ws) :- foldl([P, W0, W]>>( phrase(step(P), Sw), !, append(W0, Sw, W) ), Ps, [], Ws).
hear_proof(Ws, Ps) :- phrase(steps(Ps), Ws).
steps([]) --> [].
steps([P|Ps]) --> step(P), steps(Ps).

% check(+Proof): every step follows from earlier ones.
check(Ps) :- forall(nth1(I, Ps, step(N, F, J)), ( N == I, ok(J, F, I, Ps) )).
ok(premise, _, _, _).
ok(mp(A, B), F, I, Ps) :- A < I, B < I, nth1(A, Ps, step(_, implies(X, F), _)), nth1(B, Ps, step(_, X, _)).
ok(and_intro(A, B), and(X, Y), I, Ps) :- A < I, B < I, nth1(A, Ps, step(_, X, _)), nth1(B, Ps, step(_, Y, _)).
