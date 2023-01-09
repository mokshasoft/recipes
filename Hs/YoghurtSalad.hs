module YoghurtSalad
  ( recipe
  ) where

import Recipe

recipe :: Recipe
recipe =
  Recipe
    "Yoghurtsallad"
    "Salt yoghurt sallad"
    "En typ av raita som är bra som tillbehör till t.ex. indiska rätter."
    (Item "" 1.3 Liter)
    [ Step
        "Dela löken på mitten mellan roten och toppen. Hacka delarna så att det bildas halvcirklar av löken. Lägg löken i en skål."
        [Item "gul lök" 2 Piece]
    , Step
        "Hacka gurkan i tunna skivor, cirka 2 mm, och lägg i skålen."
        [Item "gurka" 0.5 Piece]
    , Step
        "Hacka tomaten i små klyftor och dela klyftorna på mitten, och lägg i skålen."
        [Item "tomat" 1 Piece]
    , Step "Tillsätt salt." [Item "havssalt" 2 Teaspoon]
    , Step
        "Valfritt. Salladen är också god tillsammans med chili. Tillsätt chilipulver, eller färsk chili efter smak."
        [Item "chilipulver" 2 Teaspoon]
    , Step "Häll i yoghurten." [Item "yoghurt" 1 Liter]
    , Step "Blanda väl så att kryddorna och saltet löser sig." []
    , Step "Låt stå och dra i kylen i en timme innan den serveras." []
    ]
    []
    ["Jonas Claeson"]
