my_concat([], L2, L2).
my_concat([H|Tail], L2, [H|L3]) :-
    my_concat(Tail, L2, L3).