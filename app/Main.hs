import Control.Monad

main :: IO()
main = do
  putStrLn "何回?"
  numStr <- getLine
  let num = read numStr
  fizzBuzz num

fizzBuzz num = do
  forM_ [1..num] $ \i -> do
    putStrLn (show i ++ ":" ++ toFizzBuzz i)

toFizzBuzz num =
  case mod num 15 of
    0 -> "FizzBuzz"
    3 -> "Fizz"
    5 -> "Buzz"
    6 -> "Fizz"
    9 -> "Fizz"
    10 -> "Buzz"
    12 -> "Fizz"
    _ -> ""