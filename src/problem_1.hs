import System.Environment

sumOfMultiples :: Integer -> Integer
sumOfMultiples x = sum [ xs | xs <- [1..x], xs `mod` 3 == 0 || xs `mod` 5 == 0]

main :: IO ()
main = print (sumOfMultiples 999)
