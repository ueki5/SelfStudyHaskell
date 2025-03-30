module Common where

-- 関数定義
exec :: String -> IO () -> IO ()
exec str act = do putStrLn str
                  act
