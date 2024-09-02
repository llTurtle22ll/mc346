chave_valor lista = (map fst lista, map snd lista)


-- Implementação alternativa sem map
separarElementos [] = ([], [])  -- Caso base: lista vazia
separarElementos ((x, y):xs) = (x : xs', y : ys')
  where
    (xs', ys') = separarElementos xs


main = print(separarElementos [("abc",1), ("de",4), ("casa",2)])
