module Main where

import Control.Monad (void)
import Data.IORef (newIORef, readIORef, writeIORef, IORef)

getCounter :: IO (IO Int)
getCounter = do
  ref <- newIORef 0
  let counter = do
        val <- readIORef ref
        let newVal = val + 1
        writeIORef ref newVal
        return newVal
  return counter

main = do 

  counterFunc <- getCounter

  count1 <- counterFunc
  count2 <- counterFunc
  count3 <- counterFunc

  putStrLn $ "Counter 1: " ++ show count1 
  putStrLn $ "Counter 2: " ++ show count2 
  putStrLn $ "Counter 3: " ++ show count3 