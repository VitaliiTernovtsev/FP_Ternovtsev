array = [1, 3, 7, 8, 1, 2, 4, 2, 6, 7, 5, 3, 4]
ranges = [3, 7]

sumArr :: [Integer] -> Integer
sumArr [] = 0
sumArr (x:xs) = x + sumArr xs 

productArr :: [Integer] -> Integer
productArr [] = 1
productArr (x:xs) = x * productArr xs

-- inRange :: Int -> Bool 
-- inRange n = (index arr n => fst ranges) && (index arr n < snd ranges)

cutList list = take (last ranges - head ranges) (drop (head ranges) list) 

main = do
  putStrLn "Choose an operation"  
  operation <- getLine
  let arr = cutList array
  
  case operation of 
    "+" -> do 
      putStrLn("List: " ++ show(arr))
      putStrLn("Sum = " ++ show(sumArr arr))

    "*" -> do 
      putStrLn("List: " ++ show(arr))
      putStrLn("Product = " ++ show(productArr arr))
    _ -> putStrLn("Error")