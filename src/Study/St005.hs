module Study.St005 where

-- 関数定義
factorial:: Int -> Int
factorial 0 = 1
factorial n = n * factorial (n - 1)

-- 処理実行
sub005 :: IO ()
sub005 = do
  putStrLn "サンプル実行\n"
  putStrLn $ "factorial 5 = " ++ show (factorial 5)
