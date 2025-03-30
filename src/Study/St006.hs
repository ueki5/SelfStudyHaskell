{-# LANGUAGE QuasiQuotes #-}
module Study.St006 where

-- ライブラリ
import Data.String.Interpolate

-- 関数定義
fizzbuzz:: Int -> String
fizzbuzz n | n `mod` 3 == 0 && 
             n `mod` 5 == 0 = [i|#{n} fizzbuzz|]
fizzbuzz n | n `mod` 3 == 0 = [i|#{n} fizz|]
fizzbuzz n | n `mod` 5 == 0 = [i|#{n} buzz|]
fizzbuzz n | otherwise = [i|#{n} どちらでもない|]

-- 関数定義
execr :: String -> IO () -> IO ()
execr str act = do
  putStrLn str
  act
execl :: IO () -> String -> IO ()
execl act str = do
  putStrLn str
  act
-- 処理実行
sub006 :: IO ()
sub006 = do
  putStrLn "処理実行"
  putStrLn "<<fold right"
  foldr 
    execr 
    (putStrLn "fold right>>")
    (map fizzbuzz [1 .. 20])
  putStrLn "<<fold left"
  foldl
    execl
    (putStrLn "fold left>>")
    (map fizzbuzz [1 .. 20])
