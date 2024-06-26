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
  | Milliliter
  | Liter
  | Piece
  | Portion

instance Show Unit where
  show Tablespoon = "msk"
  show Teaspoon = "tsk"
  show Gram = "gr"
  show Kilo = "kg"
  show Deciliter = "dl"
  show Milliliter = "ml"
  show Liter = "liter"
  show Piece = "st"
  show Portion = "portioner"

data Item = Item
  { name :: String
  , amount :: Float
  , unit :: Unit
  } deriving (Show)

data Step = Step
  { description :: String
  , items :: [Item]
  } deriving (Show)

data Recipe = Recipe
  { filename :: String
  , title :: String
  , intro :: String
  , size :: Item
  , steps :: [Step]
  , notes :: [Step]
  , creators :: [String]
  } deriving (Show)
