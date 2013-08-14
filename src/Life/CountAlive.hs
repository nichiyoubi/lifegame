module Life.CountAlive(countAlive) where

import Life.Type

countAlive :: (Int, Int) -> Lifegame -> Int 
countAlive _ _ = 0

countAlive' :: (Int, Int) -> Lifegame -> Int
countAlive' pos gamme