-- モジュール分割のテスト
{-# LANGUAGE QuasiQuotes #-}

module Study.St009 where

-- ライブラリ
import Control.Monad()
import Data.String.Interpolate()
import Study.St009.Mod1(func1)
import Study.St009.Lib.Mod2(func2)

-- 関数定義
-- 処理実行
sub :: IO ()
sub = do
  putStrLn "処理実行"
  putStrLn func1
  putStrLn func2

