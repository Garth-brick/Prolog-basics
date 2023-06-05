split([], [], []).
split([A], [A], []).
split([A,B|Tail], [A|L1], [B|L2]) :-
    split(Tail, L1, L2).

merge([], [], []).
merge([X], [], [X]).
merge([], [X], [X]).
merge([X1|T1], [X2|T2], [X1|R]) :-
    X1 < X2,
    merge(T1, [X2|T2], R).
merge([X1|T1], [X2|T2], [X2|R]) :-
    X2 < X1,
    merge([X1|T1], T2, R).

mergesort([], []).
mergesort([X], [X]).
mergesort([A,B|Tail], R) :-
    split([A,B|Tail], L1, L2),
    mergesort(L1, R1),
    mergesort(L2, R2),
    merge(R1, R2, R).