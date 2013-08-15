module Life.CountAlive(countAlive) where

import Life.Type

countAlive' :: (Int, Int) -> Lifegame -> Int 
countAlive' (posx, posy) (Lifegame size board) = 
			  isAlive' (posx-1, posy-1) board 
			+ isAlive' (posx  , posy-1) board 
			+ isAlive' (posx+1, posy-1) board 
			+ isAlive' (posx-1, posy  ) board 
			+ isAlive' (posx+1, posy  ) board 
			+ isAlive' (posx-1, posy+1) board 
			+ isAlive' (posx  , posy+1) board 
			+ isAlive' (posx+1, posy+1) board 

countAlive :: (Int, Int) -> Lifegame -> Int
countAlive (posx, posy) (Lifegame size board) =
			sum (map (isAlive'' board) poses)
			where poses = [(x, y)| x<-[posx-1..posx+1],
					       y<-[posy-1..posy+1],
					       ((x==posx)&&(y==posy))/=True]

isAlive :: (Int, Int) -> [(Int, Int)] -> Int
isAlive _ [] = 0
isAlive (x, y) ((cellx, celly):cells) = if ((x==cellx) && (y==celly))
					then 1
					else isAlive (x, y) cells

isAlive' :: (Int, Int) -> [(Int, Int)] -> Int
isAlive' _ [] = 0
isAlive' pos cells = if elem pos cells
			then 1
			else 0

isAlive'' :: [(Int, Int)] -> (Int, Int) -> Int
isAlive'' [] _ = 0
isAlive'' cells pos = if elem pos cells
			then 1
			else 0
