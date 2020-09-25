/*
 * Dynamic database means that it allows users to manipulate the existing
 * database.
 *
 * The predicate has to be marked :- dynamic.
 */

% the number specifies the number of parameters
:- dynamic(father/2).
:- dynamic(likes/2).
:- dynamic(friend/2).
:- dynamic(stabs/3).

father(lord_montague, romeo).
father(lord_capulet, juliet).

likes(mercutio, dancing).
likes(benvolio, dancing).
likes(romeo, dancing).
likes(juliet, dancing).
likes(romeo, juliet).
likes(juliet, romeo).

friend(romeo, mercutio).
friend(romeo, benvolio).

stabs(tybalt, mercutio, sword).
stabs(romeo, tybalt, sword).

/*
 * By doing so, it is possible to add predicates to the database on the terminal.
 *
 * assert(predicate(parameters))
 *      - add predicate to the database
 * asserta(predicate(parameters))
 *      - add predicate to the base in front of other clauses of this predicate
 * assertz(predicate(parameters))
 *      - add predicate to the base after other clauses of this predicate
 * retract(predicate(parameters))
 *      - remove predicate from the database.
 * retractall(predicate(parameters))
 *      - remove all predicates from the database.
 */