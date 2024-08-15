soma [] = 0
soma (a:as) = a + soma as


somaPar [] = 0
somaPar (a:as) = if (mod a 2) == 1
                  then somaPar as
                  else a + somaPar as



main = print (somaPar [1,2,3,4,5,6])
