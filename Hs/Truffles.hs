module Truffles
  ( recipe
  ) where

import Recipe

recipe :: Recipe
recipe =
  Recipe
    "Chokladtryfflar"
    "Chokladtryfflar"
    "Tryfflar med kakao, kokos och salt."
    (Item "" 30 Piece)
    [ Step
        "Vispa grädden tills den nästan blir som vispad grädde."
        [Item "grädde" 3 Deciliter]
    , Step "Tillsätt kakao, gärna rå." [Item "kakao" 70 Gram]
    , Step "Tillsätt salt." [Item "salt" 2.5 Milliliter]
    , Step "Tillsätt lönnsirap." [Item "lönnsirap" 2 Tablespoon]
    , Step "Vispa blandningen." []
    , Step "Tillsätt kokosfett." [Item "kokosfett" 100 Gram]
    , Step "Värm blandningen lätt på spisen och vispa till en jämn smet." []
    , Step "Låt stå i kylskåp tills blandningen stelnar." []
    , Step "Forma bollar av blandningen, och ställ tillbaka i kylskåpet." []
    ]
