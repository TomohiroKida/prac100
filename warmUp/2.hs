-- $B!V%Q%H%+!<!W(B+
-- $B!V%?%/%7!<!W$NJ8;z$r@hF,$+$i8r8_$KO"7k$7$FJ8;zNs!V%Q%?%H%/%+%7!<!<!W$rF@$h(B


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
