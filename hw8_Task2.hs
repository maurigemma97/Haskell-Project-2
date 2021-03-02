module Main where
data Suit = Spades | Hearts deriving (Show)
data Rank = Ten | Jack | Queen | King | Ace deriving (Show)
type Card = (Rank, Suit)
type Hand = [Card]

value :: Rank -> Integer
value Ten = 1
value Jack = 2
value Queen = 3
value King = 4
value Ace = 5

cardValue :: Card -> Integer
cardValue (rank, suit) = value rank

lowerCard :: Card -> Card -> Card
lowerCard a b = if cardValue a > cardValue b then a else b

sumValue :: Hand -> Integer
sumValue x = foldl(\sum card -> sum + cardValue card) 0 x

higherHand :: Hand -> Hand -> Hand
higherHand x y = if totalValue x > totalValue y then x else y

main = print()




