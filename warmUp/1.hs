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
