-- 文から単語を分解．
-- 1,5,6,7,8,9,15,16,19番目の単語は先頭の1文字，
-- それ以外は2文字を取り出した単語を格納

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
