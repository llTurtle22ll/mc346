comprimeHelper :: Eq a => [a] -> [(a, Int)] -> [(a, Int)]
comprimeHelper [] acc = reverse acc
comprimeHelper (x:xs) [] = comprimeHelper xs [(x, 1)]
comprimeHelper (x:xs) ((y, n):acc)
    | x == y    = comprimeHelper xs ((y, n + 1):acc)
    | otherwise = comprimeHelper xs ((x, 1):(y, n):acc)

-- Função principal que chama a função auxiliar
comprime :: Eq a => [a] -> [(a, Int)]
comprime xs = comprimeHelper xs []


-- Função que descomprime a lista
descomprime :: [(a, Int)] -> [a]
descomprime = concatMap (\(x, n) -> replicate n x)

main = print(descomprime [('a',3),('b',2),('s',2),('a',2),('x',1),('b',4)])
