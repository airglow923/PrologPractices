loves(romeo, juliet).   /* fact */

/* equivalent to loves(romeo, juliet) :- true. */

/* juliet loves romeo if romeo loves juliet */
loves(juliet, romeo) :- loves(romeo, juliet).   /* rule */

/* facts and rules always start with lowercase letters */

/* variables always start with uppercase letters or underscore */

/*
 * loves(romeo, X).
 *
 * returns X = juliet
 */

/*
 * facts must start with lowercase letters followed by
 *
 *     - asterisk
 *     - plus sign
 *     - minus sign
 *     - brackets
 *
 * they can also contain whitespaces as long as they are enclosed in quotes.
 */

male(albert).
male(bob).
male(bill).
male(carl).
male(charlie).
male(dan).
male(edward).

/* listing(male). prints out the list of above facts */

female(alice).
female(betsy).
female(diana).

/*
 * we can create combinations of facts using the following syntax:
 *
 * fact(variable), fact(variable), ... .
 *
 * ... is the variadic number of facts, not actual characters.
 *
 * male(X), female(Y).
 *
 * will print out a combination of male and female with the question mark
 *
 * if replied with semicolon, it will continue printing out combinations.
 */

% albert has the following children
parent(albert, bob).
parent(albert, betsy).
parent(albert, bill).

% alice has the following children
parent(alice, bob).
parent(alice, betsy).
parent(alice, bill).

% bob has the following children
parent(bob, carl).
parent(bob, charlie).

% Y is the child of X whose parent is albert
get_grandchild :-
    parent(albert, X),
    parent(X, Y),
    write('Albert\'s grandchild is '), write(Y), nl.

% specifications of format are dicussed here:
% https://www.swi-prolog.org/pldoc/man?section=format
get_grandparent :-
    parent(X, carl),
    parent(X, charlie),
    parent(Y, X),
    format('~s is the grandparent~n', [Y]).

% X is the greandparent of Y
grandparent(X, Y) :-
    parent(Z, Y),
    parent(X, Z).

% X is moral if X is human
moral(X) :- human(X).

% as hyundeok is set human, hyundeok is moral as well
% meaning that moral(hyundeok) yields true
human(hyundeok).

% underline (_) is called an anonymouse variable
% it is used to check the existence of a predicate

case(0) :-
    write('Case 0').

case(1) :-
    write('Case 1').

case(2) :-
    write('Case 2').

% by using _, we can represent a default case
case(_) :-
    write('default').