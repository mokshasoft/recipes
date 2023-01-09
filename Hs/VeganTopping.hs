module VeganTopping
  ( recipe
  ) where

import Recipe

recipe :: Recipe
recipe =
  Recipe
    "VeganskTopping"
    "Vegansk topping"
    "Topping att ha på tex en vegansk paj, eller som pesto till pasta."
    (Item "" 3 Portion)
    [ Step
        "Häll hampafrö, olivolja, tamari, vinäger, salt och näringsjäst i en mixer."
        [ Item "skalade hampafrö" 4 Deciliter
        , Item "olivolja" 1 Deciliter
        , Item "tamari" 1 Teaspoon
        , Item "vinäger" 1 Teaspoon
        , Item "salt" 0.5 Teaspoon
        , Item "näringsjäst" 4 Tablespoon
        ]
    , Step
        "Mixa blandningen till den blir slätare men fortfarande med lite bitar i."
        []
    ]
    []
    ["Jonas Claeson"]
