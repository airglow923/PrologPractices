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