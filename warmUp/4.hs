-- 
import Data.List

getAlp :: String -> String
getAlp = filter (`elem` ['A'..'z'] ++ [' '])

getNum :: [Int] -> [Int]
getNum = filter (:)

getElements :: [Int] -> [String] -> [String]
getElements [] _          = []
getElements _  []         = []
getElements (n:ns) (s:ss) = (take n s) : (getElements ns ss)

main = do
        let str = "Hi He Lied Beacuse Boron Could Oxidize Fluorine. New Nations Might Also Sign Peace Security Clause. Arthur King Can."
        let ary = [1, 5, 6, 7, 8, 9, 15, 16, 19]
        let wrd = words $ getAlp str 
        print $ getElements ary wrd
        
