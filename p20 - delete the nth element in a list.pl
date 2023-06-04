% P20 (*): Remove the K'th element from a list.
% The first element in the list is number 1.

% remove_at(X,L,K,R) :- X is the K'th element of the list L; R is the
%    list that remains when the K'th element is removed from L.
%    (element,list,integer,list) (?,?,+,?)

remove_at([_|Xs],0,Xs).
remove_at([Y|Xs],K,[Y|Ys]) :-
    K > 0,
    K1 is K - 1,
    remove_at(Xs,K1,Ys).
