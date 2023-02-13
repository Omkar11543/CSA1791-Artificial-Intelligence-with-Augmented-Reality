% Define a recursive predicate to perform run-length encoding
run_length_encoding([], []).
run_length_encoding([X|Xs], [[N, X]|Ys]) :-
    count(X, Xs, N1, Rest),
    N is N1 + 1,
    run_length_encoding(Rest, Ys).

% Define a helper predicate to count the occurrences of an element
count(_, [], 0, []).
count(X, [X|Xs], N1, Rest) :-
    count(X, Xs, N2, Rest),
    N1 is N2 + 1.
count(X, [Y|Ys], 0, [Y|Ys]) :-
    X \= Y.
