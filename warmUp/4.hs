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

