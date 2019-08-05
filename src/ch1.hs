-- $BJ8;zNs$N5U=g(B
-- $BJ8;zNs(B"stressed"$B$NJ8;z$r5U$KJB$Y$?J8;zNs$rF@$h(B

main = do
        let str = "stressed"
        putStrLn (reverse str)
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
-- $B!V%Q%H%+!<!W(B+
-- $B!V%?%/%7!<!W$NJ8;z$r@hF,$+$i8r8_$KO"7k$7$FJ8;zNs!V%Q%?%H%/%+%7!<!<!W$rF@$h(B


str1 :: String
str1 = "fuckyou"

str2 :: String
str2 = "lambda"

connectDouble :: String -> String -> String
connectDouble [] _ = []
connectDouble _ [] = []
connectDouble str1 str2 = head str1 : head str2 : connectDouble (tail str1) (tail str2)

main = do
        print str1
        print str2
        print $ connectDouble str1 str2
-- $B1_<~N((B
-- "Now I need a drink, alcoholic of course, after the heavy lectures
-- involving quantum mechanics."$B$rC18lJ,2r$7!"J8;z?t$r%j%9%H2=(B

import Data.List

-- cut down period (.)
getAlp :: String -> String
getAlp = filter (`elem` ['A'..'z'] ++ [' ']) 

main = do
        let str = "Now I need a drink, alcoholic of course, after the heavy lectures involving quantum mechanics.";
        print . map length $ words $ getAlp str    
-- $BJ8$+$iC18l$rJ,2r!%(B
-- 1,5,6,7,8,9,15,16,19$BHVL\$NC18l$O@hF,$N(B1$BJ8;z!$(B
-- $B$=$l0J30$O(B2$BJ8;z$r<h$j=P$7$?C18l$r3JG<(B

import Data.List

getAlp :: String -> String
getAlp = filter (`elem` ['A'..'z'] ++ [' '])

-- true : 1word
-- false: 2word
getElements :: String -> Bool -> String
getElements (w:ws) f
    | f         = w:[]
    | otherwise = w:head ws:[]

str = "Hi He Lied Because Boron Could Oxidize Fluorine. New Nations Might Also Sign Peace Security Clause. Arthur King Can."
ary = [1, 5, 6, 7, 8, 9, 15, 16, 19]
main = do
    let elem_bool = [(x-1, elem x ary)|x<-[1..19]]
    let ws = words $ getAlp str
    print [getElements (ws!!(fst eb)) (snd eb) | eb<-elem_bool]

-- n: n-gram 
-- split statements in n words.
-- 1: uni-gram
-- 2: bi-gram
-- 3: tri-gram

nGram :: Int -> String -> [String]
nGram n ss = [ss]

