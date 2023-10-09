class MyNum a where
  myNum :: a -> a -> a

instance MyNum Int where
  myNum x y = x + y

instance MyNum Float where
  myNum x y = x + y

main = do
  let xInt = 5 :: Int
      yInt = 8 :: Int
      xFloat = 7.2 :: Float
      yFloat = 2.8 :: Float
  
  putStrLn ("Int: " ++ show(myNum xInt yInt))
  putStrLn ("Float: " ++ show(myNum xFloat yFloat))