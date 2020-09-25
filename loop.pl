count_to_10(10) :- write(10), nl.

count_to_10(X) :-
    write(X), nl,
    Y is X + 1,
    count_to_10(Y).

% in this way, the program immediately executes the rule when invoked

% this waits for user input at each iteration
count_down(Low, High) :-
    between(Low, High, Y),
    Z is High - Y,
    write(Z), nl.

count_up(Low, High) :-
    between(Low, High, Y),
    Z is Y + Low,
    write(Z), nl.