%% fold_sum(+List, -Sum)
%% Base case: the sum of an empty list is 0.
fold_sum([], 0).

%% Recursive case: the sum is the head plus the sum of the tail.
fold_sum([Head|Tail], Sum) :-
    fold_sum(Tail, TailSum),
    Sum is Head + TailSum.

%% map_increment(+List, -Result)
%% Base case: mapping over an empty list results in an empty list.
map_increment([], []).

%% Recursive case: increment the head and map the tail.
map_increment([Head|Tail], [IncrementedHead|IncrementedTail]) :-
    IncrementedHead is Head + 1,
    map_increment(Tail, IncrementedTail).

%% Example usage:
%% ?- fold_sum([1, 2, 3, 4], Sum).
%% Sum = 10.

%% ?- map_increment([1, 2, 3, 4], Result).
%% Result = [2, 3, 4, 5].