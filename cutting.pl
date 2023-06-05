% let's say we want a function that outputs 0 for input less than 3
%                                   outputs 2 for input greater than 3 and less than 6
%                                   outputs 4 for all input greater than or equal to 6

func(X, 0) :-
    X < 3, !.
func(X, 2) :-
    X < 6, !.
func(_, 4).

% the exclaimation mark prevents prolog from checking fursther clauses if one becomes true


% finding the greatest from two intputs
my_max(X, Y, X) :-
    X > Y, !.
my_max(_, Y, Y).


% checking if something is a member of a list
list_member(X, [X|_]) :-
    !.
list_member(X, [_|Tail]) :-
    list_member(X, Tail).


% adding X to list L if X is not a member of the list L
add_if_absent(X, L, L) :-
    list_member(X, L), !.
add_if_absent(X, L, [X|L]).


%  mary likes all animals except snakes
animal(elephant).
animal(rattlesnake).
snake(rattlesnake).

mary_likes(X) :-
    snake(X), 
    !, fail.
mary_likes(X) :-
    animal(X).