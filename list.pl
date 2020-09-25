/*
 * Construct list with [].
 *
 * [elem0|[elem1, elem2]]
 * yields [elem0, elem1, elem2]
 *
 * use length(X) to get the number of elements of the list.
 *
 * length([0, 1, 2], X).
 * yields X = 3.
 *
 * [H|T] = [a, b, c].
 * H = a
 * T = [b, c]
 *
 * use member(X) to determine whethe the element is in a list.
 *
 * A = [a, b, c].
 * member(a, A).
 * A = [a|_].
 *
 * reverse, append also possible
 */

write_list([]).

write_list(Head|Tail) :-
    write(Head), nl,
    write_list(Tail).