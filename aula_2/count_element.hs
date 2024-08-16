-- Reuturn how many times an elemnts appears in a list
countElement _ [] = 0
countElement x (a:as) = if x == a
                 then 1 + countElement x as
                 else countElement x as


-- main = print (count 2 [2,3,4,2,3,4,2,1,3,4,2,4,5,2,1,1])
main = print (countElement 1 [2,3])
