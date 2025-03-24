% Load the knowledge base by consulting the file familias.pl

% Example queries to run against the knowledge base:

% 1. Who is the father of Ana?
?- padre(X, ana).
% Expected output: X = pedro.

% 2. Who is the mother of Luis?
?- madre(X, luis).
% Expected output: X = maria.

% 3. Is Pedro married to Maria?
?- casado_con(pedro, maria).
% Expected output: true.

% 4. Who are the siblings of Juan?
?- hermano(X, juan); hermana(X, juan).
% Expected output: No siblings listed for Juan.

% 5. Who are the children of Pedro?
?- hijo(X, pedro); hija(X, pedro).
% Expected output: X = ana; X = luis.

% 6. Who are the grandparents of Sofia?
?- abuelo(X, sofia); abuela(X, sofia).
% Expected output: X = pedro; X = maria; X = alberto; X = luisa.

% 7. Who are the uncles of Marco?
?- tio(X, marco).
% Expected output: X = luis.

% 8. Who are the aunts of Andres?
?- tia(X, andres).
% Expected output: X = elena.

% 9. Who is the husband of Ana?
?- esposo(X, ana).
% Expected output: X = juan.

% 10. Who is the wife of Juan?
?- esposa(X, juan).
% Expected output: X = ana.

% 11. Who are the cousins of Natalia?
?- primo(X, natalia); prima(X, natalia).
% Expected output: X = sofia; X = marco.

% 12. Who is the son-in-law of Pedro?
?- yerno(X, pedro).
% Expected output: X = juan.

% 13. Who is the daughter-in-law of Alberto?
?- nuera(X, alberto).
% Expected output: X = ana.

% 14. Who are the grandchildren of Carlos?
?- nieto(X, carlos); nieta(X, carlos).
% Expected output: X = andres.

% 15. Is Sofia a niece of Luis?
?- sobrino(X, luis); sobrina(X, luis).
% Expected output: X = sofia.