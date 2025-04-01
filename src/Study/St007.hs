{-# LANGUAGE QuasiQuotes #-}

module Study.St007 where

-- ライブラリ
import Data.String.Interpolate

-- 関数定義
uFoldl :: (b -> a -> b) -> b -> [a] -> b
uFoldl _ z [] = z
uFoldl f z (x : xs) = f (uFoldl f z xs) x

uFoldr :: (a -> b -> b) -> b -> [a] -> b
uFoldr _ z [] = z
uFoldr f z (x : xs) = f x (uFoldr f z xs)

uConcatL :: String -> Integer -> String
uConcatL "" n = [i|(#{n})|]
uConcatL s n = [i|(#{s}:#{n})|]

uConcatR :: Integer -> String -> String
uConcatR n "" = [i|(#{n})|]
uConcatR n s = [i|(#{n}:#{s})|]

ar :: [Integer]
ar = (0 : (1 : (2 : [])))

minus3 :: Integer -> Integer
-- minus3 x = subtract x 1
minus3 = (`subtract` 1)

-- 処理実行
sub007 :: IO ()
sub007 = do
  putStrLn "処理実行"
  putStrLn $ uFoldl uConcatL "l" ar
  putStrLn $ uFoldr uConcatR "r" ar
  print $ minus3 2
