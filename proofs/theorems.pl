% Theorems, proved by exhaustion. Run: swipl -g main -t halt proofs/theorems.pl
:- module(theorems, [main/0]).
:- use_module(prove).
:- discontiguous theorem/1.
:- use_module(library(lists)).
:- use_module(library(apply)).
main :- prove_all(theorems).
:- use_module('../prolog/voiceproof').

% Domain: every formula of depth up to 2 over p and q (800 formulas).
f(0, A) :- member(A, [p, q]).
f(D, F) :- D > 0, D0 is D - 1, ( f(D0, F) ; f(D0, G), F = not(G) ; f(D0, G), f(D0, H), member(F, [and(G, H), or(G, H), implies(G, H)]) ).
formula_d(F) :- findall(X, f(2, X), Xs), sort(Xs, S), member(F, S).

% 1. Every formula, spoken, is heard back as itself.
theorem(speak_then_hear) :- forall(formula_d(F), ( speak(F, W), hear(W, F) )).

% 2. Nothing can be misheard: every spoken formula has exactly one reading.
theorem(unambiguous) :- forall(formula_d(F), ( speak(F, W), findall(G, hear(W, G), [F]) )).

% 3. Two-step proofs round-trip through speech.
theorem(proofs_roundtrip) :- forall(( member(A, [p, implies(p, q), and(p, q)]), member(B, [q, not(p)]) ), ( P = [step(1, A, premise), step(2, B, premise), step(3, and(A, B), and_intro(1, 2))], speak_proof(P, W), hear_proof(W, P2), P2 == P, check(P) )).

% 4. Modus ponens is accepted exactly when the first cited step is an implication from the second to the conclusion.
theorem(mp_checked) :- forall(( member(X, [p, q, implies(p, q)]), member(Y, [p, q]), member(C, [p, q]) ), iff(check([step(1, X, premise), step(2, Y, premise), step(3, C, mp(1, 2))]), X == implies(Y, C))).
