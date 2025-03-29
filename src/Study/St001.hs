module Study.St001 where

-- ここにモジュールの内容を書きます
isEven :: Int -> Bool
isEven n = case n of n' | even n' -> True
                        | otherwise -> False
isEven2 :: Int -> Bool
isEven2 n = case n of n' | (_, 0) <- n' `divMod` 2 -> True
                         | (_, 1) <- n' `divMod` 2 -> False
                         | otherwise -> False

-- タプルのパターンマッチの例
checkPair :: (Int, Int) -> String
checkPair x = case x of
    p | (0, 0) <- p -> "両方ゼロ"
      | (a, b) <- p, a == b -> "同じ数"
      | (a, _) <- p, a > 0 -> "最初が正"
      | otherwise -> "その他"

-- 複数のパターンマッチの組み合わせ例
analyzeList :: [Int] -> String
analyzeList xs = case xs of
    lst | [] <- lst -> "空リスト"
        | (x:xs') <- lst, x > 0, null xs' -> "正の数のみの1要素リスト"
        | (x:y:_) <- lst, x > 0, y > 0 -> "最初の2要素が正"
        | otherwise -> "その他のリスト"

-- Maybe型とパターンマッチの組み合わせ
processValue :: Maybe Int -> Int -> String
processValue mx y = case mx of
    val | Nothing <- val -> "値なし"
        | Just x <- val, x > y -> "与えられた値より大きい"
        | Just x <- val, x == y -> "同じ値"
        | otherwise -> "与えられた値より小さい"

sub:: IO ()
sub = do
    print (isEven 2)
    print (checkPair (1, 1))
    print (checkPair (2, 1))
    -- 新しい関数のテスト
    print (analyzeList [])          -- "空リスト"
    print (analyzeList [1])         -- "正の数のみの1要素リスト"
    print (analyzeList [1,2,3])     -- "最初の2要素が正"
    print (processValue (Just 5) 3)  -- "与えられた値より大きい"
    print (processValue Nothing 3)   -- "値なし"
