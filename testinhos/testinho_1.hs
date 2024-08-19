-- Removes an iten from a list the first n times it appears 
removen num n [] = []
removen num n (a:as) = if a == num && n /= 0
                       then removen num (n-1) as
                       else a:removen num n as


main = print (removen 4 2 [2,3,4,5,4,3,2,1,4,4,3])
