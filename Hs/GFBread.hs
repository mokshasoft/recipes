module GFBread
  ( recipe
  ) where

import Recipe

recipe :: Recipe
recipe =
  Recipe
    "GlutenfrittSurdegsBröd"
    "Gluten-fritt surdegsbröd"
    "Surdegsbröd gjort utan gluten, och utan behov av att hålla en surdegskultur levande. Receptet ger en limpa."
    (Item "" 1 Piece)
    [ Step
        "Mixa följande i en höghastighetsmixer. Det funkar säkert med en vanlig mixer också. Cirka 250 gram totalt."
        [ Item "havre" 2 Deciliter
        , Item "vit quinoa" 2 Deciliter
        , Item "psylliumhusk" 0.5 Deciliter
        , Item "salt" 1 Teaspoon
        , Item "kummin/brödkryddor" 1 Teaspoon
        ]
    , Step
        "Tillsått vatten och [Probioform](https://probioform.com/) till mjölet. Knåda till en deg och lägg i en bunke."
        [Item "vatten" 3 Deciliter, Item "Probioform" 2 Tablespoon]
    , Step "Blötlägg bovete." [Item "skalat bovete" 3 Deciliter]
    , Step "Låt degen och boveten stå i rumstemeratur i 24 timmar." []
    , Step
        "Skölj boveten noga och knåda in i degen. Lägg tillbaka i bunken så att degen jäser till rätt form."
        []
    , Step
        "Låt stå ytterligare 48 timmar i rumstemperatur. Ju mer tid desto mer syrlighet."
        []
    , Step
        "Stjälp upp degen på en plåt och grädda på 210 grader i 30 minuter. Ställ en skål med vatten i botten på ugnen."
        []
    , Step "Pensla brödet med vatten och låt stå i eftervärmen i ugnen." []
    , Step "Låt brödet vila någon halvtimme efter gräddningen." []
    ]
    [ Step
        "Istället för att låta degen stå i 3 dygn kan man fermentera den i ett lätt yoghurt program i 10 timmar."
        []
    ]
    ["Jonas Claeson"]
