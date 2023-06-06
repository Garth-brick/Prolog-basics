% we will use the first element as the pivot in the quicksort

% lista_append(L1, L2, Output)
list_append([], X, X).
list_append([H|Tail], Y, [H|R]) :-
    list_append(Tail, Y, R).


% partition(Input_list, Pivot, Left_partition, Right_partition)
% if the head is less the pivot then it will be in the left partition
partition([H|Tail], X, [H|Left], Right) :-
    H =< X,
    partition(Tail, X, Left, Right).
% if the head is greater than the pivot then it will be in the right parition
partition([H|Tail], X, Left, [H|Right]) :-
    H > X,
    partition(Tail, X, Left, Right).
partition([], _, [], []).


quicksort([X|Tail], R) :-
    partition(Tail, X, Left, Right),
    quicksort(Left, R_left),
    quicksort(Right, R_right),
    list_append(R_left, [X|R_right], R).
quicksort([], []).