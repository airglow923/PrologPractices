/*
 * name to create string.
 *
 * name(X, []).
 * [] is the list of ASCII values.
 */

append_string(Src1, Src2, Dest) :-
    name(Src1, List1),
    name(Src2, List2),
    append(List1, List2, DestList),
    name(Dest, DestList).

% nth0(index, List, X).
% X stores the element located at the index in the List.

% atom_length to get the size of a string.