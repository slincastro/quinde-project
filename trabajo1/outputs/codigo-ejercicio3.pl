% Corrected Prolog code for Fibonacci sequence

fibonacci(0, 0). % Corrected base case for fibonacci(0)
fibonacci(1, 1).
fibonacci(N, F) :-
    N > 1,
    N1 is N - 1,
    N2 is N - 2,
    fibonacci(N1, F1),
    fibonacci(N2, F2),  
    F is F1 + F2.       

% Example usage:
% To find the 5th Fibonacci number, you can query:
% ?- fibonacci(5, F).
% F = 5.

% To find the 10th Fibonacci number, you can query:
% ?- fibonacci(10, F).
% F = 55.