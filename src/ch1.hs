-- 文字列の逆順
-- 文字列"stressed"の文字を逆に並べた文字列を得よ

main = do
        let str = "stressed"
        putStrLn (reverse str)
-- パタトクカシーー
-- 「パタトクカシーー」という文字列の奇数文字目取り出して連結↓文字列を得よ

getArrayN :: String -> Int -> Char
getArrayN str n = head $ reverse $ take n str

getOddArray :: String -> String
getOddArray str = [ getArrayN str n | n <- [1..(length str)], odd n ] 

str :: String
str = "fluacmkbydoau"

main = do
        print str
        print $ getOddArray str
-- 「パトカー」+
-- 「タクシー」の文字を先頭から交互に連結して文字列「パタトクカシーー」を得よ


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
-- 円周率
-- "Now I need a drink, alcoholic of course, after the heavy lectures
-- involving quantum mechanics."を単語分解し、文字数をリスト化

import Data.List

-- cut down period (.)
getAlp :: String -> String
getAlp = filter (`elem` ['A'..'z'] ++ [' ']) 

main = do
        let str = "Now I need a drink, alcoholic of course, after the heavy lectures involving quantum mechanics.";
        print . map length $ words $ getAlp str    
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

-- n: n-gram 
-- split statements in n words.
-- 1: uni-gram
-- 2: bi-gram
-- 3: tri-gram

nGram :: Int -> String -> [String]
nGram n ss = [ss]

