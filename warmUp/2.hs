-- $B1_<~N((B
-- "Now I need a drink, alcoholic of course, after the heavy lectures
-- involving quantum mechanics."$B$rC18lJ,2r$7!"J8;z?t$r%j%9%H2=(B

import Data.List

alp :: String -> String
alp = filter (`elem` ['A'..'z'] ++ [' ']) 

main = do
        let str = "Now I need a drink, alcoholic of course, after the heavy lectures involving quantum mechanics.";
        print . map length $ words $ alp str    
