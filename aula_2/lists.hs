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


-- Reuturn how many times an elemnts appears in a list
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
shiftrn n lista = if list

main = print (shiftr [2,4,6,8,10])
