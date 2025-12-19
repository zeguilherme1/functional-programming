module Main where
main :: IO()


hello :: String -> String
hello str = "Hello " ++ str

main = do
    putStrLn "Funcionando"
