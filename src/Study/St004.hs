module Study.St004 where

-- ガードでのパターンマッチングの例
checkValue :: Maybe Int -> String
-- checkValue mx
--   | Just x <- mx, x > 0 = "正の数"
--   | Just x <- mx, x < 0 = "負の数"
--   | Just 0 <- mx = "ゼロ"
--   | Nothing <- mx = "値なし"
--   | otherwise = "その他"

-- checkValue mx' = case mx' of
--   mx
--     | Just x <- mx, x > 0 -> "正の数"
--     | Just x <- mx, x < 0 -> "負の数"
--     | Just 0 <- mx -> "ゼロ"
--     | Nothing <- mx -> "値なし"
--     | otherwise -> "その他"

checkValue mx | Just x <- mx, x > 0 = "正の数"
-- checkValue mx | Just x <- mx, x < 0 = "負の数"
checkValue mx | Just 0 <- mx = "ゼロ"
checkValue mx | Nothing <- mx = "値なし"
checkValue _ | otherwise = "その他"

-- リストでのガードとパターンマッチングの例
analyzeList :: [Int] -> String
analyzeList xs
  | (x : y : _) <- xs, x > y = "降順"
  | (x : y : _) <- xs, x < y = "昇順"
  | [_] <- xs = "1要素のみ"
  | [] <- xs = "空リスト"
  | otherwise = "その他"

-- タプルでのガードとパターンマッチングの例
checkPair :: (Maybe Int, Maybe Int) -> String
checkPair pair
  | (Just x, Just y) <- pair, x == y = "同じ値"
  | (Just x, Just y) <- pair, x > y = "最初が大きい"
  | (Nothing, _) <- pair = "最初が空"
  | (_, Nothing) <- pair = "次が空"
  | otherwise = "その他"

sub004 :: IO ()
sub004 = do
  putStrLn "\nガードでのパターンマッチング例:"
  putStrLn $ "checkValue (Just 5): " ++ checkValue (Just 5)
  putStrLn $ "checkValue (Just (-3)): " ++ checkValue (Just (-3))
  putStrLn $ "checkValue Nothing: " ++ checkValue Nothing

  -- putStrLn $ "analyzeList [3,2,1]: " ++ analyzeList [3, 2, 1]
  -- putStrLn $ "analyzeList [1,2,3]: " ++ analyzeList [1, 2, 3]
  -- putStrLn $ "analyzeList []: " ++ analyzeList []

  -- putStrLn $ "checkPair (Just 1, Just 1): " ++ checkPair (Just 1, Just 1)
  -- putStrLn $ "checkPair (Just 2, Just 1): " ++ checkPair (Just 2, Just 1)
  -- putStrLn $ "checkPair (Nothing, Just 1): " ++ checkPair (Nothing, Just 1)
