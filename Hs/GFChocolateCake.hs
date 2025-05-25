module GFChocolateCake
  ( recipe
  ) where

import Recipe

recipe :: Recipe
recipe =
  Recipe
    "GlutenfriChokladKaka"
    "Glutenfri chokladkaka"
    "Chokladkaka gjord utan gluten och mjölkprodukter."
    (Item "" 12 Piece)
    [ Step
        "Skär sötpotatisen i kuber och ångkoka tills dom är mjuka. Tillsätt kokosfettet så att det smälter."
        [Item "sötpotatis" 1 Kilo, Item "kokosfett" 1.5 Deciliter]
    , Step
        "Häll mandlarna i en höghastighetsmixer och mixa till ett mjöl."
        [Item "Mandel" 200 Gram]
    , Step "Tillsätt sötpotatisblandningen till mandelmjölet och mixa." []
    , Step
        "Tillsätt kakao, lönnsirap, bovetemjöl, vanilj, bakpuler, och havssalt. Mixa till en slät smet."
        [ Item "kakaopulver" 3 Deciliter
        , Item "lönnsirap" 3 Deciliter
        , Item "bovetemjöl" 1 Deciliter
        , Item "vaniljpulver" 2 Teaspoon
        , Item "bakpulver" 2 Teaspoon
        , Item "havssalt" 0.5 Teaspoon
        ]
    , Step "Rör ner valnötterna i smeten." [Item "valnötter" 100 Gram]
    , Step
        "Häll smeten i en smord form. Gör kakan 2-3 cm hög. Grädda i 30 minuter på 180 grader."
        []
    ]
    []
    ["Jonas Claeson"]
