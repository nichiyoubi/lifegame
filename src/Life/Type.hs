module Life.Type
(Lifegame(..))
where

data Lifegame = Lifegame { size :: Int
			 , board :: [(Int, Int)]
			 } deriving (Eq, Show)

