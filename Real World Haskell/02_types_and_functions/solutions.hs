lastButOne :: [a] -> Maybe a
lastButOne xs
 | length xs > 1 = Just $ (last . init) xs
 | otherwise     = Nothing
