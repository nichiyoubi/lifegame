module Test.LifeTest where

import Life.Type
import Life.CountAlive
import Test.HUnit

game1 = Lifegame { size = 3, board = []}
game2 = Lifegame { size = 3, board = [(1,1)]}
game3 = Lifegame { size = 3, board = [(1,1), (1,2), (2,1)]}
game4 = Lifegame { size = 3, board = [(1,1), (1,2), (2,1), (2,3)]}
game5 = Lifegame { size = 3, board = [(1,1), (1,2), (1,3), (2,1), (2,3)]}
game6 = Lifegame { size = 3, board = [(1,1), (1,2), (1,3), (2,1), (2,3), (3,1)]}
game7 = Lifegame { size = 3, board = [(1,1), (1,2), (1,3), (2,1), (2,3), (3,1), (3,2)]}
game8 = Lifegame { size = 3, board = [(1,1), (1,2), (1,3), (2,1), (2,3), (3,1), (3,2), (3,3)]}

test1 = TestCase(assertEqual "countAlive (2,2) game1," 0 (countAlive (2,2) game1))
test2 = TestCase(assertEqual "countAlive (2,2) game2," 1 (countAlive (2,2) game2))
test3 = TestCase(assertEqual "countAlive (2,2) game3," 3 (countAlive (2,2) game3))
test4 = TestCase(assertEqual "countAlive (2,2) game4," 4 (countAlive (2,2) game4))
test5 = TestCase(assertEqual "countAlive (2,2) game5," 5 (countAlive (2,2) game5))
test6 = TestCase(assertEqual "countAlive (2,2) game6," 6 (countAlive (2,2) game6))
test7 = TestCase(assertEqual "countAlive (2,2) game7," 7 (countAlive (2,2) game7))
test8 = TestCase(assertEqual "countAlive (2,2) game8," 8 (countAlive (2,2) game8))
tests = TestList[TestLabel "test1" test1,
      		 TestLabel "test2" test2,
      		 TestLabel "test3" test3,
      		 TestLabel "test4" test4,
      		 TestLabel "test5" test5,
      		 TestLabel "test6" test6,
		 TestLabel "test7" test7,
		 TestLabel "test8" test8]

