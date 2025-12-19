module Main where

main :: IO()


add :: Int -> Int -> Int
add x y = x + y

mult :: Int -> Int -> Int
mult x y = x * y


name = "Jose"
hello :: String
hello = "Hello" ++ name


main = do
    putStrLn "Calculadora"

