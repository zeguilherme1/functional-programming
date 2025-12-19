module Main where
import Data.List (sort)
main :: IO()


-- Exercício 1.3 do Structure and Interpretation of Computer Programs
-- 18/12/2025 22:39

squareSum :: Int -> Int -> Int -> Int
squareSum x y z =
    let twoMax = take 2 (reverse (sort [x, y, z]))
    in sum (map (^2) twoMax)


weirdSquareSum :: Int -> Int -> Int -> Int
weirdSquareSum x y z 
    | x <= y && x <= z = (y * y) + (z * z)
    | y <= x && y <= z = (x * x) + (z * z)
    | otherwise = (x * x) + (y * y)


main = do
    putStrLn "Funcionando"



