loves(romeo, juliet).

loves(juliet, romeo) :- loves(romeo, juliet).

happy(albert).
happy(alice).
happy(bob).
happy(bill).
with_albert(alice).

/* albert runs if albert is happy  */
runs(albert) :- happy(albert).

/* alice dances if alice is happy and is with albert */
dances(alice) :-
    happy(alice),
    with_albert(alice).

does_alice_dance :- dances(alice),
    write('alice dances if alice is happy and is with albert').

/*
swims(bob) :-
    happy(bob),
    near_water(bob).    error because not defined
*/

swims(bill) :- happy(bill).

swims(bill) :- near_water(bill).

/* it is possible to define a new fact that depends on another fact */