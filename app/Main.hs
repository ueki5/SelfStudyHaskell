module Main where
import Study.St002(sub)
import Study.St003

main :: IO ()
main = do
  sub
  putStrLn "\n左向き矢印演算子の例:"
  ioExample
  putStrLn $ "リストの例: " ++ show listExample
  putStrLn $ "Maybeの例: " ++ show maybeExample
