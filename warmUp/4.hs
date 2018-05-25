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

getL :: String -> String
getL (s:ss) = s

main = do
    let str = "Hi He Lied Because Boron Could Oxidize Fluorine. New Nations Might Also Sign Peace Security Clause. Arthur King Can."
    let ary = [1, 5, 6, 7, 8, 9, 15, 16, 19]
    let far = [elem x ary|x<-[1..20]]
    print [getElements ws f|ws<-words $ getAlp str, f<-far]
