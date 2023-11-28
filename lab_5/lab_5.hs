import System.IO

main :: IO ()
main = do
    hSetBuffering stdout NoBuffering
    putStrLn "Guess a number between 0 and 99."
    guessNumber 0 99

guessNumber :: Int -> Int -> IO ()
guessNumber low high
    | low == high = putStrLn $ "Your number is... " ++ show low
    | otherwise = do
        let mid = (low + high) `div` 2
        putStrLn $ "Less than " ++ show mid ++ "? (Yes, no)"
        response <- getLine
        case response of
            "yes" -> guessNumber low (mid - 1)
            "no" -> guessNumber (mid + 1) high
            _ -> do
                putStrLn "Only 'yes' or 'no'."
                guessNumber low high
