module Mead
  ( recipe
  ) where

import Recipe

recipe :: Recipe
recipe =
  Recipe
    "Nejlikomjöd"
    "Nejlikomjöd"
    "Mjöd smaksatt med nejlikor."
    (Item "" 7 Deciliter)
    [ Step
        "Blanda ut honungen med vattnet"
        [Item "vatten" 7 Deciliter, Item "honung" 50 Gram]
    , Step "Lägg till nejlikor" [Item "nejlikor" 7 Piece]
    ]
