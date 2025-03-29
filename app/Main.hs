module Main where
import Study.St001(sub)
import Study.St002

main :: IO ()
main = do
  sub
  putStrLn "\n演算子の例:"
  arithmeticOps
  compareOps
  logicalOps
  listOps
