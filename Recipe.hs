module Recipe
  ( Recipe
  , Unit(..)
  , Item(..)
  , Step(..)
  ) where

data Unit
  = Tablespoon
  | Teaspoon
  | Gram
  | Deciliter
  | Piece
  deriving (Show)

data Item =
  Item
    { name :: String
    , amount :: Float
    , unit :: Unit
    }
  deriving (Show)

data Step =
  Step
    { description :: String
    , items :: [Item]
    }
  deriving (Show)

type Recipe = [Step]
