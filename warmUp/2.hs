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
