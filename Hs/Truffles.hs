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
        "Häll grädde, lönnsirap och salt i en bunke."
        [ Item "grädde" 3 Deciliter
        , Item "lönnsirap" 2 Tablespoon
        , Item "salt" 2.5 Milliliter
        ]
    , Step "Vispa grädden tills den nästan blir som vispad grädde." []
    , Step
        "Tillsätt kokosfett och kakao, gärna rå."
        [Item "kokosfett" 80 Gram, Item "kakao" 70 Gram]
    , Step "Värm blandningen lätt på spisen och vispa till en jämn smet." []
    , Step "Låt stå i kylskåp tills blandningen stelnar." []
    , Step "Forma bollar av blandningen, och ställ tillbaka i kylskåpet." []
    ]
    ["Jonas Claeson"]
