module Study.St003 where

-- IOモナドでの使用例
ioExample :: IO ()
ioExample = do
  putStrLn "あなたの名前を入力してください："
  name <- getLine -- getLine からの入力値を name に束縛
  putStrLn $ "こんにちは、" ++ name ++ "さん！"

-- リストモナドでの使用例
listExample :: [(Int, Int)]
listExample = do
  x <- [1, 2] -- リストから値を取り出して x に束縛
  y <- [3, 4] -- リストから値を取り出して y に束縛
  return (x, y) -- 新しいタプルを作成

-- Maybeモナドでの使用例
maybeExample :: Maybe String
maybeExample = do
  x <- Just (5::Int) -- Just から値を取り出して x に束縛
  y <- Just "Hello" -- Just から値を取り出して y に束縛
  return $ y ++ show x -- 文字列を結合して返す

sub003 :: IO ()
sub003 = do
  putStrLn "\n左向き矢印演算子の例:"
  ioExample
  putStrLn $ "リストの例: " ++ show listExample
  putStrLn $ "Maybeの例: " ++ show maybeExample
