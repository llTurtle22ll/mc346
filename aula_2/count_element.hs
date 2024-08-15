count _ [] = 0
count x (a:as) = if x == a
                 then 1 + count x as
                 else count x as


-- main = print (count 2 [2,3,4,2,3,4,2,1,3,4,2,4,5,2,1,1])
main = print (count 1 [2,3])
