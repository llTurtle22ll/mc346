data Arvore a = Vazia | No a (Arvore a) (Arvore a) deriving (Eq, Show)

menorMaior :: (Ord a) => Arvore a -> (a, a)
menorMaior Vazia = error "Arvore vazia"
menorMaior (No x esq dir) = (minimo, maximo)
  where
    valores = x : (todosValores esq ++ todosValores dir)
    minimo = minimum valores
    maximo = maximum valores

-- Função auxiliar para extrair todos os valores de uma árvore
todosValores :: Arvore a -> [a]
todosValores Vazia = []
todosValores (No x esq dir) = x : (todosValores esq ++ todosValores dir)





main = print( menorMaior (No 1 (No 2 Vazia Vazia) (No 1(No 8(No 3 Vazia Vazia) Vazia) (No 0 Vazia (No 9 Vazia Vazia))))) 
