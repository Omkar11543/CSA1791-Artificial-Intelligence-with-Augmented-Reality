% remove_consecutive_duplicates(+List, -Result)
% Result is the list with consecutive duplicates removed
remove_consecutive_duplicates([], []).
remove_consecutive_duplicates([X], [X]).
remove_consecutive_duplicates([X, X|Tail], Result) :-
    remove_consecutive_duplicates([X|Tail], Result).
remove_consecutive_duplicates([X, Y|Tail], [X|Result]) :-
    X \= Y,
    remove_consecutive_duplicates([Y|Tail], Result).
