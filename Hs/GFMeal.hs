module GFMeal
  ( recipe
  ) where

import Recipe

recipe :: Recipe
recipe =
  Recipe
    "GlutenfriMjöl"
    "Gluten-fri mjöl"
    "Mjöl utan gluten till pajer mm."
    (Item "" 5 Deciliter)
    [ Step
        "Mixa följande i en höghastighetsmixer."
        [ Item "havre" 2 Deciliter
        , Item "quinoa" 2 Deciliter
        , Item "psylliumhusk" 1 Deciliter
        ]
    ]
    []
    ["Jonas Claeson"]
