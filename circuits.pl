and(1,1,1).
and(_,_,0).

or(0,0,0).
or(_,_,1).

not(0,1).
not(1,0).

xor(X,X,0).
xor(_,_,1).

nand(X,Y,R) :-
    and(X,Y,R2),
    not(R2, R).

nor(X,Y,R) :-
    or(X,Y,R2),
    not(R2,R).

mux_2x1(0,X1,_,X1).
mux_2x1(1,_,X2,X2).
mux_4x1(S0,S1,I0,I1,I2,I3,R) :-
    mux_2x1(S0,I0,I1,R1),
    mux_2x1(S0,I2,I3,R2),
    mux_2x1(S1,R1,R2,R).

% gives true if both X==Y.
doubles(X,Y):-
    X =:= Y.

% gives true is X =\= Y.
not_doubles(X,Y) :-
    X =\= Y.

% D flip-flop will retain the current state if Clk is 0.
% It will set the next state to D is Clk is 1.
% dff(D, Clk, Q_present, Q_next).
dff(_, 0, Q, Q).
dff(D, 1, _, D).

even_length([]).
even_length([_|Tail]) :-
    odd_length(Tail).

odd_length([_]).
odd_length([_|Tail]) :-
    even_length(Tail).

