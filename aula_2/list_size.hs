tam [] = 0
tam (a:as) = 1 + tam as

main :: IO ()
main = print (tam [1, 2, 3, 4, 5, 6, 7, 8, 9, 0])
