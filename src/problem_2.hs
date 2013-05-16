import System.Environment 

fib :: Integer -> Integer
fib 0 = 0
fib 1 = 1
fib x = fib(x-1) + fib(x-2)

fiblist :: Integer -> [Integer]
fiblist x = map fib [1..x]

evenFibSum :: Integer -> Integer
evenFibSum x = sum [xs | xs <- fiblist x, xs < 4000000 && even xs]
main :: IO()
main = print (evenFibSum 34) -- the 34th number in fib sequence is > 4 mil
