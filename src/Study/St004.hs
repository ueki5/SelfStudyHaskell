
module Study.St004 where

-- ガードでのパターンマッチングの例
checkValue :: Maybe Int -> String
checkValue mx
  | Just x <- mx, x > 0 = "正の数"
  | Just x <- mx, x < 0 = "負の数"
  | Just 0 <- mx = "ゼロ"
  | Nothing <- mx = "値なし"
  | otherwise = "その他"

-- リストでのガードとパターンマッチングの例
analyzeList :: [Int] -> String
analyzeList xs
  | (x:y:_) <- xs, x > y = "降順"
  | (x:y:_) <- xs, x < y = "昇順"
  | [x] <- xs = "1要素のみ"
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
