module Drink
  ( recipe
  ) where

import Recipe

recipe :: Recipe
recipe =
  Recipe
    "Syrad dryck"
    "Mjölksyrad frukt- och bärdryck."
    (Item "" 30 Liter)
    [ Step
        "Lägg i kryddorna"
        [Item "nejlikor" 2 Tablespoon, Item "Ingefära" 1 Teaspoon]
    ]
