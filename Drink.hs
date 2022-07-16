module Drink
  ( recipe
  ) where

import Recipe

recipe :: Recipe
recipe =
  [ Step
      "Lägg i kryddorna"
      [Item "nejlikor" 2 Tablespoon, Item "Ingefära" 1 Teaspoon]
  ]
