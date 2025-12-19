module Main where


xs = [0..10]
indexa :: [a] -> Int -> a
indexa xs i = head (drop i xs)

-- Integer é limitado pela memória, Int eh limitado a 64bits --
fatorial :: Integer -> Integer
fatorial n = product [1..n]



-- Compressão de listas -- 
xs' = [x | x <- [0,2..100], x `mod` 3 == 0]
        -- x <- [0,2..100] >> Expressão geradora --
        -- x >> Resultado --
        -- x `mod` 3 == 0 >> Filtro --

pairs = [(x, y) | x <- [0..10], y <- [10..20]]

tam xs = sum [1 | x <- xs]
divisores n = [x | x <- [1..n], n `mod` x == 0]


isPrime :: Int -> Bool
isPrime n = length(divisores n) == 2 

primos x = [x | x <- [2..x], isPrime x]



fatorial2 :: Integer -> Integer
fatorial2 0 = 1
fatorial2 n = n * fatorial (n - 1) 

main :: IO()
main = do
    putStrLn "Hello World"

