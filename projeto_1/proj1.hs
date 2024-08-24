trocatodos velho novo [] = []
trocatodos velho novo (a:as)
  | a == velho = novo:trocatodos velho novo as
  | otherwise = a:trocatodos velho novo as



cumsum [] = []
cumsum lista = cumsum' lista 0


cumsum' [] _ = [] 
cumsum' (a:as) acc = (acc+a):cumsum' as (acc+a)

main = print (cumsum [5,10,2,3])
