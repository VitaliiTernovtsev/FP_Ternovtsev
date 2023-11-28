multiply :: [Int] -> Int
multiply = foldr (*) 1

main = do
  putStrLn $ "5 arguments: " ++ show (multiply [2, 3, 4])
  putStrLn $ "4 arguments: " ++ show (multiply [5, 6, 3, 1])
  putStrLn $ "2 arguments: " ++ show (multiply [7, 9])