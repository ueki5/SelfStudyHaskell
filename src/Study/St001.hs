{-# LANGUAGE CPP #-}
module Study.St001 where

import System.IO (hSetEncoding, stdout, stdin, utf8)
import GHC.IO.Encoding (setLocaleEncoding, setFileSystemEncoding)

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

-- OR条件の例
checkNumber :: Int -> String
checkNumber n = case n of
    x | x == 0 || x == 1 -> "0か1です"
      | x < 0 || x > 100 -> "範囲外です"
      | x `mod` 2 == 0 || x `mod` 3 == 0 -> "2か3の倍数です"
      | otherwise -> "その他の数です"

-- パターンマッチとOR条件の組み合わせ
analyzeValue :: Maybe Int -> String
analyzeValue mx = case mx of
    val | Nothing <- val -> "値なし"
        | Just x <- val, x == 0 || x == 1 -> "0か1"
        | Just x <- val, x < 0 || x > 10 -> "範囲外"
        | otherwise -> "通常の値"

sub:: IO ()
sub = do
    -- エンコーディングの設定
    setLocaleEncoding utf8
    setFileSystemEncoding utf8
    hSetEncoding stdin utf8
    hSetEncoding stdout utf8

    -- 関数のテスト
    print (isEven 2)
    print (checkPair (1, 1))
    print (checkPair (2, 1))
    print (analyzeList [])          -- "空リスト"
    print (analyzeList [1])         -- "正の数のみの1要素リスト"
    print (analyzeList [1,2,3])     -- "最初の2要素が正"
    print (processValue (Just 5) 3)  -- "与えられた値より大きい"
    print (processValue Nothing 3)   -- "値なし"
    print (isEven 2)
    print (checkPair (1, 1))
    print (checkPair (2, 1))
    print (analyzeList [])
    print (analyzeList [1])
    print (analyzeList [1,2,3])
    print (processValue (Just 5) 3)
    print (processValue Nothing 3)
    -- OR条件のテスト
    print (checkNumber 0)    -- "0か1です"
    print (checkNumber 6)    -- "2か3の倍数です"
    print (analyzeValue (Just 0))  -- "0か1"
    print (analyzeValue (Just 15)) -- "範囲外"