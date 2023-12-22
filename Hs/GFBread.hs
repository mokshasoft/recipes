module GFBread
  ( recipe
  ) where

import Recipe

recipe :: Recipe
recipe =
  Recipe
    "GlutenfrittSurdegsBröd"
    "Gluten-fritt surdegsbröd"
    "Surdegsbröd gjort utan gluten. En limpa."
    (Item "" 1 Piece)
    [ Step
        "Mixa följande i en höghastighetsmixer. Cirka 250 gram totalt."
        [ Item "havre" 2 Deciliter
        , Item "vit quinoa" 2 Deciliter
        , Item "psylliumhusk" 0.5 Deciliter
        , Item "salt" 1 Teaspoon
        , Item "kummin/brödkryddor" 1 Teaspoon
        ]
    , Step
        "Tillsått vatten och probioform till mjölet. Knåda till en deg och lägg i en bunke."
        [Item "vatten" 3 Deciliter, Item "Probioform" 2 Tablespoon]
    , Step "Blötlägg bovete." [Item "skalat bovete" 3 Deciliter]
    , Step "Låt stå i rumstemeratur i 24 timmar." []
    , Step
        "Skölj boveten och knåda in i degen. Lägg tillbaka i bunken så att degen jäser till rätt form."
        []
    , Step "Låt stå ytterligare 12-24 timmar." []
    , Step
        "Stjälp upp degen på en plåt och grädda på 220 grader i 30 minuter."
        []
    , Step "Pensla brödet med vatten och låt stå i eftervärmen i ugnen." []
    ]
    []
    ["Jonas Claeson"]
