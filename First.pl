is_member(X,[X|_]).
is_member(X, [_|T]) :-
    is_member(X,T).

remove_duplicates([],[]).
remove_duplicates([H|T], R) :-
    is_member(H,T),
    remove_duplicates(T,R).
remove_duplicates([H|T],[H|R]) :-
    \+ is_member(H,T),
    remove_duplicates(T,R).

