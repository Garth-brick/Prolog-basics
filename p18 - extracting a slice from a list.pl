% P18 (**):  Extract a slice from a list

% slice(L1,I,K,L2) :- L2 is the list of the elements of L1 between
%    index I and index K (both included).
%    (list,integer,integer,list) (?,+,+,?)

slice([X|_],0,0,[X]).
slice([X|Xs],0,K,[X|Ys]) :-
    K > 0,
    K1 is K - 1,
    slice(Xs,1,K1,Ys).
slice([_|Xs],I,K,Ys) :-
    I > 0,
    I1 is I - 1,
    K1 is K - 1,
    slice(Xs,I1,K1,Ys).
