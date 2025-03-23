% Hechos extendidos
padre(pedro, ana).
padre(pedro, luis).
padre(alberto, juan).
padre(juan, sofia).
padre(juan, marco).
padre(carlos, elena).
padre(carlos, pablo).
padre(diego, rosa).
padre(miguel, carla).
padre(pablo, andres).

madre(maria, ana).
madre(maria, luis).
madre(luisa, juan).
madre(ana, sofia).
madre(ana, marco).
madre(elena, rosa).
madre(rosa, andres).
madre(carla, natalia).
madre(paula, carla).
madre(silvia, pablo).

casado_con(pedro, maria).
casado_con(alberto, luisa).
casado_con(juan, ana).
casado_con(carlos, elena).
casado_con(diego, rosa).
casado_con(miguel, paula).

% Reglas
esposo(X, Y) :- casado_con(X, Y), hombre(X).
esposa(X, Y) :- casado_con(X, Y), mujer(X).

cuñado(X, Y) :- esposo(X, Z), hermana(Z, Y).
cuñado(X, Y) :- hermano(X, Z), casado_con(Z, Y).

cuñada(X, Y) :- esposa(X, Z), hermano(Z, Y).
cuñada(X, Y) :- hermana(X, Z), casado_con(Z, Y).

hijo(X, Y) :- padre(Y, X); madre(Y, X).
hermano(X, Y) :- padre(Z, X), padre(Z, Y), X \= Y, hombre(X).
hermana(X, Y) :- madre(Z, X), madre(Z, Y), X \= Y, mujer(X).
tio(X, Y) :- hermano(X, Z), hijo(Y, Z); hermano(X, Z), hija(Y, Z).
tia(X, Y) :- hermana(X, Z), hijo(Y, Z); hermana(X, Z), hija(Y, Z).

% Género
hombre(pedro).
hombre(alberto).
hombre(juan).
hombre(luis).
hombre(marco).
hombre(carlos).
hombre(diego).
hombre(miguel).
hombre(pablo).
hombre(andres).

mujer(maria).
mujer(luisa).
mujer(ana).
mujer(sofia).
mujer(elena).
mujer(rosa).
mujer(carla).
mujer(paula).
mujer(silvia).
mujer(natalia).


hijo(X, Y) :- padre(Y, X), hombre(X).
hija(X, Y) :- padre(Y, X), mujer(X).
hijo(X, Y) :- madre(Y, X), hombre(X).
hija(X, Y) :- madre(Y, X), mujer(X).

hermano(X, Y) :- padre(Z, X), padre(Z, Y), madre(W, X), madre(W, Y), X \= Y, hombre(X).
hermana(X, Y) :- padre(Z, X), padre(Z, Y), madre(W, X), madre(W, Y), X \= Y, mujer(X).

medio_hermano(X, Y) :- padre(Z, X), padre(Z, Y), madre(W1, X), madre(W2, Y), W1 \= W2, X \= Y, hombre(X).
medio_hermano(X, Y) :- madre(Z, X), madre(Z, Y), padre(W1, X), padre(W2, Y), W1 \= W2, X \= Y, hombre(X).
media_hermana(X, Y) :- padre(Z, X), padre(Z, Y), madre(W1, X), madre(W2, Y), W1 \= W2, X \= Y, mujer(X).
media_hermana(X, Y) :- madre(Z, X), madre(Z, Y), padre(W1, X), padre(W2, Y), W1 \= W2, X \= Y, mujer(X).

abuelo(X, Y) :- padre(X, Z), padre(Z, Y).
abuelo(X, Y) :- padre(X, Z), madre(Z, Y).
abuela(X, Y) :- madre(X, Z), padre(Z, Y).
abuela(X, Y) :- madre(X, Z), madre(Z, Y).

nieto(X, Y) :- hijo(X, Z), hijo(Z, Y).
nieto(X, Y) :- hijo(X, Z), hija(Z, Y).
nieta(X, Y) :- hija(X, Z), hijo(Z, Y).
nieta(X, Y) :- hija(X, Z), hija(Z, Y).

primo(X, Y) :- padre(Z, X), tio(Z, Y), hombre(X).
primo(X, Y) :- madre(Z, X), tia(Z, Y), hombre(X).
prima(X, Y) :- padre(Z, X), tio(Z, Y), mujer(X).
prima(X, Y) :- madre(Z, X), tia(Z, Y), mujer(X).

suegro(X, Y) :- padre(X, Z), casado_con(Y, Z).
suegra(X, Y) :- madre(X, Z), casado_con(Y, Z).
yerno(X, Y) :- casado_con(X, Z), hija(Z, Y), hombre(X).
nuera(X, Y) :- casado_con(X, Z), hijo(Z, Y), mujer(X).