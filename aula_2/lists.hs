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

main = print (rangeList 1)
