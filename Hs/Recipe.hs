module Recipe
  ( Recipe(..)
  , Unit(..)
  , Item(..)
  , Step(..)
  ) where

data Unit
  = Tablespoon
  | Teaspoon
  | Gram
  | Kilo
  | Deciliter
  | Liter
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

data Recipe =
  Recipe
    { filename :: String
    , title :: String
    , intro :: String
    , size :: Item
    , steps :: [Step]
    }
  deriving (Show)
