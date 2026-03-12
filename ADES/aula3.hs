import Data.List (partition)

main :: IO ()
main = do
  print "HW"
  print (sinal (-42))
  print $ baskara 0 3 3
  print $ myLen nums
  print $ foldr (+) 0 nums
  print $ foldr (*) 1 nums
  print ["Adenilso", "da", "Silva", "Simao"]
  print $ "Hello" ++ "World"
  print $ foldr (++) "" strs

strs = ["Adenilso", "da", "Silva", "Simao"]


sinal x
  | x < 0 = -1
  | x == 0 = 0
  | otherwise = 1

baskara a b c
  | a == 0 = [(-c)/b]
  | delta < 0 = []
  | delta == 0 = [x]
  | otherwise = [x', x'']
  where
    delta = b^2 - 4*a*c
    x = (-b)/(2*a)
    x' = (-b + sqdelta) / (2*a)
    x'' = (-b - sqdelta) / (2*a)
    sqdelta = sqrt delta
  
  
nums = [3, 4, 2, 6, 2, 7]
  
nums2 = 3:(4:(2:(6:(2:(7:[])))))

myLen [] = 0
myLen (_:xs) = 1 + myLen xs

myEmpty [] = True
myEmpty (_:_) = False

-- myLen [3, 4, 2, 6, 2, 7] = 1 + myLen [4, 2, 6, 2, 7]
-- myLen [4, 2, 6, 2, 7] = 1 + myLen [2, 6, 2, 7]
-- myLen [2, 6, 2, 7] = 1 + myLen [6, 2, 7]
-- myLen [6, 2, 7] = 1 + myLen [2, 7]
-- myLen [2, 7] = 1 + myLen [7]
-- myLen [7] = 1 + myLen []
-- myLen [] = 0

mySum [] = 0
mySum (x:xs) = x + mySum xs

-- mySum [3, 4, 2, 6, 2, 7] = 3 + mySum [4, 2, 6, 2, 7]
-- mySum [4, 2, 6, 2, 7] = 4 + mySum [2, 6, 2, 7]
-- mySum [2, 6, 2, 7] = 2 + mySum [6, 2, 7]
-- mySum [6, 2, 7] = 6 + mySum [2, 7]
-- mySum [2, 7] = 2 + mySum [7]
-- mySum [7] = 7 + mySum []
-- mySum [] = 0

-- mySum [2, 4] + mySum [5, 6] = mySum [2, 4, 5, 6]
-- mySum [4, 6] + mySum [] = mySum [4, 6]

-- myProd [2, 4] * myProd[5, 6] = myProd [2, 4, 5, 6]
-- myProd [4, 6] * myProd [] = myProd [4, 6]
myProd [] = 1
myProd (x:xs) = x * myProd xs

myMap _ [] = []
myMap f (x:xs) = f x:myMap f xs

myFilter _ [] = []
myFilter t (x:xs)
  | t x = x:ts
  | otherwise = ts
  where
    ts = myFilter t xs
