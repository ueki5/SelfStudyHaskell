{-# LANGUAGE QuasiQuotes #-}

module Study.St008 where

-- ライブラリ
import Control.Monad
import Data.String.Interpolate

--------------------------------------------------
-- F#での末尾再帰の例：
-- // 非末尾再帰
-- let rec fact n =
--   if n = 0 then 1 else fact (n - 1) * n

-- // 末尾再帰
-- let fact n =
--   let rec ifact n r =
--     if n = 0 then r else ifact (n - 1) (n * r)
--   ifact n 1
--------------------------------------------------

-- 関数定義
-- // 非末尾再帰
notTailRecursive :: Int -> Int
notTailRecursive n =
  if n == 0
    then 1
    else notTailRecursive (n - 1) * n

-- // 末尾再帰
tailRecursive :: Int -> Int
tailRecursive n = tailRecursive' n 1
  where
    tailRecursive' 0 r = r
    tailRecursive' n' r = tailRecursive' (n' - 1) (n' * r)

fmt :: (Int -> Int) -> Int -> String
fmt f n = [i|fact #{n} = #{f n}|]

-- 処理実行
sub008 :: IO ()
sub008 = do
  putStrLn "処理実行"
  forM_ [0 .. 10] $ \n -> do
    putStrLn $ fmt notTailRecursive n
