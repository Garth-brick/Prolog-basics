% P21 (*): Insert an element at a given position into a list
% The first element in the list is number 1.

% insert_at(X,L,K,R) :- X is inserted into the list L such that it
%    occupies position K. The result is the list R.
%    (element,list,integer,list) (?,?,+,?)

remove_at(X,[X|Xs],0,Xs).
remove_at(X,[Y|Xs],K,[Y|Ys]) :-
    K > 0,
    K1 is K - 1,
    remove_at(X,Xs,K1,Ys).

insert_at(X,L,K,R) :- remove_at(X,R,K,L).

