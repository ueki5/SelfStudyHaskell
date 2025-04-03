{-# LANGUAGE QuasiQuotes #-}

module Study.St008 where

-- ライブラリ
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
  if n == 0 then 1 
            else notTailRecursive (n - 1) * n
-- // 末尾再帰
tailRecursive :: Int -> Int
tailRecursive n = tailRecursive' n 1
  where tailRecursive' 0 r = r
        tailRecursive' n' r = tailRecursive' (n' - 1) (n' * r)
  
-- 処理実行
sub008 :: IO ()
sub008 = do
  putStrLn "処理実行"
  putStrLn [i|notTailRecursive:#{r1}\ntailRecursive:#{r2}|]
  where
    r1 = notTailRecursive 3
    r2 = tailRecursive 3
