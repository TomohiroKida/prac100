-- $BJ8$+$iC18l$rJ,2r!%(B
-- 1,5,6,7,8,9,15,16,19$BHVL\$NC18l$O@hF,$N(B1$BJ8;z!$(B
-- $B$=$l0J30$O(B2$BJ8;z$r<h$j=P$7$?C18l$r3JG<(B

import Data.List

getAlp :: String -> String
getAlp = filter (`elem` ['A'..'z'] ++ [' '])

getElements :: [Bool] -> [String] -> [String]
getElements bx sx = sx

main = do
        let str = "Hi He Lied Beacuse Boron Could Oxidize Fluorine. New Nations Might Also Sign Peace Security Clause. Arthur King Can."
        let ary = [1, 5, 6, 7, 8, 9, 15, 16, 19]
        print $ getElements [elem x ary|x<-[1..20]] (words $ getAlp str) 
