-- 文から単語を分解．
-- 1,5,6,7,8,9,15,16,19番目の単語は先頭の1文字，
-- それ以外は2文字を取り出した単語を格納

import Data.List

getAlp :: String -> String
getAlp = filter (`elem` ['A'..'z'] ++ [' '])

getElements :: [Bool] -> [String] -> [String]
getElements bx sx = sx

main = do
        let str = "Hi He Lied Beacuse Boron Could Oxidize Fluorine. New Nations Might Also Sign Peace Security Clause. Arthur King Can."
        let ary = [1, 5, 6, 7, 8, 9, 15, 16, 19]
        print $ getElements [elem x ary|x<-[1..20]] (words $ getAlp str) 
