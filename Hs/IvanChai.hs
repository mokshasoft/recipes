module IvanChai
  ( recipe
  ) where

import Recipe

recipe :: Recipe
recipe =
  Recipe
    "IvanChai"
    "Ivan Chai"
    "Ett te med traditioner i Ryssland som görs av mjölkört. Kan likna både svart och grönt te beroende på process."
    (Item "" 200 Gram)
    [ Step
        "Skörda bladen på mjölkört."
        [Item "Mjölkört" 10 Liter]
    , Step "Kör bladen genom en slow-juicer och samla både vätskan och fibrerna." []
    , Step "Torka massan i ugnen mellan 40-90 grader. Olika temeraturer ger olika smaker." []
    ]
    ["Jonas Claeson"]
