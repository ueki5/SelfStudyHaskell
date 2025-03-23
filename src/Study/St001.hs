module Study.St001 where

-- ここにモジュールの内容を書きます
sub:: IO ()
sub = do
  let trial = "This is a trial"
      attempt = "This is an attempt"
  putStrLn trial
  putStrLn attempt
