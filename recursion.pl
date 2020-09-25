parent(albert, bob).
parent(albert, betsy).
parent(albert, bill).

parent(alice, bob).
parent(alice, betsy).
parent(alice, bill).

parent(bob, carl).
parent(bob, charlie).

% X is related to Y
% if X has a child Z who is related to Y
related(X, Y) :-
    parent(X, Z),
    related(Z, Y).