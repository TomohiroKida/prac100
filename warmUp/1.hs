-- $B%Q%?%H%/%+%7!<!<(B
-- $B!V%Q%?%H%/%+%7!<!<!W$H$$$&J8;zNs$N4q?tJ8;zL\<h$j=P$7$FO"7k"-J8;zNs$rF@$h(B

getArrayN :: String -> Int -> Char
getArrayN str n = head $ reverse $ take n str

getOddArray :: String -> String
getOddArray str = [ getArrayN str n | n <- [1..(length str)], odd n ] 

str :: String
str = "fluacmkbydoau"

main = do
        print str
        print $ getOddArray str
