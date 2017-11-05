-- 円周率
-- "Now I need a drink, alcoholic of course, after the heavy lectures
-- involving quantum mechanics."を単語分解し、文字数をリスト化

import Data.List

alp :: String -> String
alp = filter (`elem` ['A'..'z'] ++ [' ']) 

main = do
        let str = "Now I need a drink, alcoholic of course, after the heavy lectures involving quantum mechanics.";
        print . map length $ words $ alp str    
