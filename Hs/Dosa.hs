module Dosa
  ( recipe
  ) where

import Recipe

recipe :: Recipe
recipe =
  Recipe
    "Dosa"
    "Dosa"
    "En fermenterad Sydindisk pannkaka bestående av ris och röda linser."
    (Item "" 4 Portion)
    [ Step
        "Blötlägg linser och ris i 12 timmar."
        [Item "röda linser" 2.5 Deciliter, Item "ris" 2.5 Deciliter]
    , Step
        "Skölj ris- och linsblandningen och lägg i en mixer. Det ska ha svält till cirka 8 dl."
        []
    , Step "Fyll på vatten tills det blir 16 dl totalt." []
    , Step "Tillsätt salt." [Item "salt" 1 Tablespoon]
    , Step "Tillsätt anisfrö." [Item "anisfrö" 1 Tablespoon]
    , Step "Mixa till en slät smet." []
    , Step "Låt fermentera i 8 timmar i 30 grader." []
    , Step "Stek gyllenbruna likt pannkakor." []
    ]
