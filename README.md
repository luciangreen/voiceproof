# voiceproof

read a proof aloud and hear it back. Formulas are spoken in a prefix form that cannot be misheard: "both A and B", "either A or B", "if A then B", "not A"; a proof step is "step N F by RULE [of M and K]". The same DCG speaks and parses, every formula has exactly one reading, and check/1 verifies the proof (premise, modus ponens, and-introduction).

## Use

```prolog
?- use_module(prolog/voiceproof).
?- speak(implies(p, and(q, r)), W).    % W = [if, p, then, both, q, and, r]
?- hear([not, either, p, or, q], F).   % F = not(or(p, q))
```

## Proofs

`proofs/theorems.pl` proves 4 theorems by exhaustion: each one is checked for every case in a finite domain that covers every branch of the definitions. every formula of depth up to 2 over p and q (800 formulas).

1. Every formula, spoken, is heard back as itself.
2. Nothing can be misheard: every spoken formula has exactly one reading.
3. Two-step proofs round-trip through speech.
4. Modus ponens is accepted exactly when the first cited step is an implication from the second to the conclusion.

```sh
swipl -g main -t halt proofs/theorems.pl
```

## 200 inputs and outputs

`io/ios.txt` lists 200 inputs and outputs from real runs, and `io/ios.pl` has the same as Prolog facts. The inputs come from a fixed seed (`io/cases.pl`). `swipl -g check -t halt io/run.pl` runs them again. It fails if any output changes, or if a predicate doesn't confirm its own recorded output, which checks steadfastness. GitHub Actions runs the proofs and the examples on every push, and records the examples on the first push.

Licence: BSD-3-Clause.
