module Main where
import Study.St002(sub)
import Study.St003
import Study.St004

main :: IO ()
main = do
  sub
  putStrLn "\n左向き矢印演算子の例:"
  ioExample
  putStrLn $ "リストの例: " ++ show listExample
  putStrLn $ "Maybeの例: " ++ show maybeExample
  
  putStrLn "\nガードでのパターンマッチング例:"
  putStrLn $ "checkValue (Just 5): " ++ checkValue (Just 5)
  putStrLn $ "checkValue (Just (-3)): " ++ checkValue (Just (-3))
  putStrLn $ "checkValue Nothing: " ++ checkValue Nothing
  
  putStrLn $ "analyzeList [3,2,1]: " ++ analyzeList [3,2,1]
  putStrLn $ "analyzeList [1,2,3]: " ++ analyzeList [1,2,3]
  putStrLn $ "analyzeList []: " ++ analyzeList []
  
  putStrLn $ "checkPair (Just 1, Just 1): " ++ checkPair (Just 1, Just 1)
  putStrLn $ "checkPair (Just 2, Just 1): " ++ checkPair (Just 2, Just 1)
  putStrLn $ "checkPair (Nothing, Just 1): " ++ checkPair (Nothing, Just 1)
