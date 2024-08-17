-- Returns the size of a list
tam [] = 0
tam (a:as) = 1 + tam as

-- returns the last item ins a list
lastItemList (a:as) = if as == []
                      then a
                      else lastItemList as


-- returns true if x is in the list
-- Returns False otherwise
xIsInList _ [] = False
xIsInList x (a:as) = (x==a) || xIsInList x as


-- cereate a list from n to 1
rangeRev n = if n == 1
            then [1]
            else n:rangeRev (n-1)


-- Return the index of an iten x in the list
-- Retuns 0 if element is not on the list, 1 if first element
indexItem _ _ [] = 0
indexItem x id (a:as) = if x == a
            then id + 1
            else indexItem x (id+1) as


-- reverts a list
reverseList [] = []
reverseList (a:as) = reverseList as ++ [a]


-- Given a number n generates a list from 1 to n
rangeList n = if n == 0
              then []
              else rangeList (n-1) ++ [n]


-- Return how many times an elemnts appears in a list
countElement _ [] = 0
countElement x (a:as) = if x == a
                 then 1 + countElement x as
                 else countElement x as


-- Returns the sum of the elements in a list
soma [] = 0
soma (a:as) = a + soma as


-- Returns the sum of the even elements in a list
somaPar [] = 0
somaPar (a:as) = if (mod a 2) == 1
                  then somaPar as
                  else a + somaPar as


-- Returns a list without its last element
listNoLastElement (a:as) = if as == []
                           then []
                           else a:listNoLastElement as

-- Return the sum of the elements in even positions
-- List starts at index 1 
sumEvenPos _ [] = 0
sumEvenPos id (a:as) = if (mod id 2) == 1
                    then sumEvenPos (id+1) as
                    else a + sumEvenPos (id+1) as



-- Returns the intercalation of 2 list
-- When a list is finished, the function stops
intercala1 as [] = []
intercala1 [] bs = []
intercala1 (a:as) (b:bs) = a:b:intercala1 as bs


-- Returns the intercalation of 2 list
-- When a list is finished, the function continues
intercala2 as [] = as
intercala2 [] bs = bs
intercala2 (a:as) (b:bs) = a:b:intercala2 as bs


-- Returns True if as list is ordered, False otherwise
isListOrdered [] = True
isListOrdered (a:as) = if as /= []
                       then (a <= head as) && isListOrdered as
                       else isListOrdered as

-- Shift right in a list
shiftr lista = let
               lastItem = lastItemList lista
               lista2 = listNoLastElement lista
               in lastItem:lista2


-- Shift right n times in a list
shiftrn 0 lista = lista
shiftrn n lista = shiftrn (n-1) (shiftr lista)


-- Removes an item from a lista one time only
remove1 n [] = []
remove1 n (a:as) = if n == a
                   then as
                   else a:remove1 n as

-- Removes an iten from a list all the times it appears
removeall n [] = []
removeall n (a:as) = if a == n
                     then removeall n as
                     else a:removeall n as

-- Removes an iten from a list the first n times it appears 
removen num n [] = []
removen num n (a:as) = if a == num && n /= 0
                       then removen num (n-1) as
                       else a:removen num n as

-- Removes an iten from a list the last time it appears
-- TODO


-- Swaps an old item for a new one in a list(one time)
troca1 old new [] = []
troca1 old new (a:as) = if a == old
                        then new:as
                        else a:troca1 old new as


-- Swaps an old item for a new one in a list(all the times)
trocaall old new [] = []
trocaall old new (a:as) = if a == old
                          then new:trocaall old new as
                          else a:trocaall old new as 


-- Swaps an old item for a new one in a list(n times)
trocan old new n [] = []
trocan old new n (a:as) = if a == old && n /= 0
                          then new:trocan old new (n-1) as
                          else a:trocan old new n as

main = print (trocan 4 3 2 [2,4,6,4,8,4,10,4])

