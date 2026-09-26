module BuckwheatPancakes
  ( recipe
  ) where

import Recipe

recipe :: Recipe
recipe =
  Recipe
    "Bovetepannkakor"
    "Bovetepannkakor"
    "Pannkakor gjorda på bovetemjöl."
    (Item "" 4 Portion)
    [ Step
        "Blanda bovetemjölet och saltet i en bunke."
        [Item "bovetemjöl" 2.5 Deciliter, Item "salt" 0.5 Teaspoon]
    , Step "Vispa ner hälften av mjölken. Se till att smeten blir slät." [Item "mjölk" 3 Deciliter]
    , Step
        "Smält smöret och vispa ner det tillsammans med olivoljan."
        [Item "smör" 100 Gram, Item "olivolja" 0.5 Deciliter]
    , Step "Mosa bananen och vispa ner den i smeten." [Item "banan" 1 Piece]
    , Step "Häll i resten av mjölken och vispa." [Item "mjölk" 3 Deciliter]
    ]
    []
    ["Jonas Claeson"]
