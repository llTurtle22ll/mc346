% Caso base: a lista vazia permanece vazia
removetodos(_, [], []).

% Se o primeiro elemento da lista for o item a ser removido, ignore-o e continue com o restante da lista
removetodos(X, [X|T], R) :-
    removetodos(X, T, R).

% Se o primeiro elemento não for o item, mantenha-o e continue removendo o item do restante da lista
removetodos(X, [H|T], [H|R]) :-
    X \= H,
    removetodos(X, T, R).
