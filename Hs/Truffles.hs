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
        "Värm kokosfett i en gryta så att det smälter. Tillsätt kakao, gärna rå."
        [Item "kokosfett" 80 Gram, Item "kakao" 70 Gram]
    , Step "Häll ner grädden i grytan och vispa till en jämn smet." []
    , Step
        "Klicka ut smeten i lagom stora klickar på en plåt med en sked och ställ i kylskåp."
        []
    ]
    []
    ["Jonas Claeson"]
