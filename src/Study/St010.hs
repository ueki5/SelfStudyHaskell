{-# LANGUAGE QuasiQuotes #-}

module Study.St010 where

-- ライブラリ
import Data.Monoid
-- import Control.Monad
-- import Data.String.Interpolate

-- 関数定義
maybes :: [Maybe Int]
maybes = [
  Nothing, 
  Just 1, 
  Nothing, 
  Just 3, 
  Just 4, 
  Nothing
  ]

step1 :: [First Int]
step1 = map First maybes
step2 :: First Int 
step2 = mconcat step1
step3 :: Maybe Int
step3 = getFirst step2
-- 処理実行
sub :: IO ()
sub = do
  putStrLn "処理実行"
  putStrLn $ show step1
  putStrLn $ show step2
  putStrLn $ show step3
