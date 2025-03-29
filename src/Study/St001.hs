module Study.St001 where

-- ここにモジュールの内容を書きます
isEven :: Int -> Bool
isEven n = case n of n' | even n' -> True
                        | otherwise -> False
isEven2 :: Int -> Bool
isEven2 n = case n of n' | (_, 0) <- n' `divMod` 2 -> True
                         | (_, 1) <- n' `divMod` 2 -> False
                         | otherwise -> False

sub:: IO ()
sub = print (isEven 2)
