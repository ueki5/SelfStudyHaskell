{-# LANGUAGE QuasiQuotes #-}
module Study.St006 where

-- ライブラリ
import Data.String.Interpolate

-- 関数定義
fizzbuzz:: Int -> String
fizzbuzz n | n `mod` 3 == 0 && 
             n `mod` 5 == 0 = [i|#{n} fizzbuzz|]
fizzbuzz n | n `mod` 3 == 0 = "fizz"
fizzbuzz n | n `mod` 5 == 0 = "buzz"
fizzbuzz _ | otherwise = "何者でもない"

-- 関数定義
exec :: String -> IO () -> IO ()
exec str act = do
  putStrLn str
  act
-- 処理実行
sub006 :: IO ()
-- sub006 = do
--   putStrLn "処理実行"
  -- putStrLn $ "No1:" ++ fizzbuzz 3
  -- putStrLn $ "No2:" ++ fizzbuzz 5
  -- putStrLn $ "No3:" ++ fizzbuzz 15
  -- putStrLn $ "No4:" ++ fizzbuzz 1
sub006 = foldr exec (return ()) (map fizzbuzz [1 .. 20])
