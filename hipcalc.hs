import Numeric
import Data.Char
import Text.Printf
import Data.List.Split
import Data.List


int2bit :: Int -> [Char]
int2bit n =
    printf "%08s" s
    where s = showIntAtBase 2 intToDigit n ""


ip2bit :: [Char] -> [Char]
ip2bit s =
    intercalate "." [int2bit (read a :: Int) | a <- xs]
    where xs = splitOn "." s


main = do
--    ip <- getArgs
    putStrLn $ "Your ip is: "
