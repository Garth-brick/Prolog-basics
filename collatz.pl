use_module(library(clpfd)).

collatz_next(N0,N):-
    N0 #= 2*N.
collatz_next(N0,N):-
    N0 #= 2*_ + 1,
    N #= 3*N0 + 1.