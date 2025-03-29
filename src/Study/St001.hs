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

sub:: IO ()
sub = do
    print (isEven 2)
    print (checkPair (1, 1))  -- "同じ数"が出力される
    print (checkPair (2, 1))  -- "最初が正"が出力される
