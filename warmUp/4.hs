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

str = "Hi He Lied Because Boron Could Oxidize Fluorine. New Nations Might Also Sign Peace Security Clause. Arthur King Can."
ary = [1, 5, 6, 7, 8, 9, 15, 16, 19]
main = do
    let elem_bool = [(x-1, elem x ary)|x<-[1..19]]
    let ws = words $ getAlp str
    print [getElements (ws!!(fst eb)) (snd eb) | eb<-elem_bool]

