module Study.St002 where

-- 基本的な算術演算子
-- (+) : 加算
-- (-) : 減算
-- (*) : 乗算
-- (/) : 除算
-- (^) : べき乗
arithmeticOps :: IO ()
arithmeticOps = do
  putStrLn $ "1 + 2 = " ++ show ((1 + 2)::Int)
  putStrLn $ "5 - 3 = " ++ show ((5 - 3)::Int)
  putStrLn $ "4 * 2 = " ++ show ((4 * 2)::Int)
  putStrLn $ "6 / 2 = " ++ show ((6 / 2)::Double)
  putStrLn $ "2 ^ 3 = " ++ show ((2::Int) ^ (3::Int))

-- 比較演算子
-- (==) : 等しい
-- (/=) : 等しくない
-- (<)  : より小さい
-- (>)  : より大きい
-- (<=) : 以下
-- (>=) : 以上
compareOps :: IO ()
compareOps = do
  putStrLn $ "1 == 1: " ++ show ((1::Int) == (1::Int))
  putStrLn $ "1 /= 2: " ++ show ((1::Int) /= (2::Int))
  putStrLn $ "1 < 2:  " ++ show ((1::Int) < (2::Int))
  putStrLn $ "2 > 1:  " ++ show ((2::Int) > (1::Int))

-- 論理演算子
-- (&&) : 論理積（AND）
-- (||) : 論理和（OR）
-- not  : 否定（関数）
logicalOps :: IO ()
logicalOps = do
  putStrLn $ "True && False: " ++ show (True && False)
  putStrLn $ "True || False: " ++ show (True || False)
  putStrLn $ "not True: " ++ show (not True)

-- リスト操作演算子
-- (++)  : リストの連結
-- (:)   : 先頭に要素を追加
listOps :: IO ()
listOps = do
  putStrLn $ "[1,2] ++ [3,4]: " ++ 
    show ([(1::Int), (2::Int)] ++ [(3::Int), (4::Int)])
  putStrLn $ "1 : [2,3]: " ++ show (1 : [(2::Int), (3::Int)])

sub002 :: IO ()
sub002 = do
  putStrLn "\n演算子の例:"
  arithmeticOps
  compareOps
  logicalOps
  listOps
