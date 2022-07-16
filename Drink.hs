module Drink
  ( recipe
  ) where

import Recipe

recipe :: Recipe
recipe =
  Recipe
    "Syrad dryck"
    "Mjölksyrad frukt- och bärdryck."
    (Item "" 30 Liter)
    [ Step "Ta fram en jäshink på 30 liter." []
    , Step "Skär äpplen i bitar och lägg i hinken." [Item "Äpplen" 1.5 Kilo]
    , Step
        "Skiva apelsin med skalet och lägg i hinken."
        [Item "Apelsin" 1.5 Piece]
    , Step "Häll blåbären i hinken." [Item "Blåbär" 0.75 Kilo]
    , Step
        "Häll den gamla drycken i hinken. För att skapa kulturen första gången så kan man ta några skedar med opastöriserad surkål och lägga i hinken."
        [Item "Dryck" 0.5 Liter]
    , Step
        "Blanda ut honung i en burk med lock tillsammans med vatten och skaka så att honungen löser sig. Häll i hinken."
        [Item "Honung" 375 Gram]
    , Step "Häll i fänkålen i hinken." [Item "Fänkålsfrö" 17 Gram]
    , Step
        "Valfritt. Krydda drycken med tex chili, ingefära, färsk gurkmeja, nejlikor, eller något annat"
        []
    , Step "Fyll hinken med kallt vatten." []
    , Step
        "Sätt på ett tätslutande lock på hinken. Locket kan ha ett vattenlås men behöver det inte."
        []
    , Step "Ställ hinken i rumstemperatur." []
    , Step
        "Låt jäsa i tre veckor. I början kommer drycken expandera något så var försiktig om lite av drycken skulle rinna ut."
        []
    , Step
        "Tillsätt honung utblandad med vatten i hinken, och rör om."
        [Item "Honung" 150 Gram]
    , Step
        "Låt hinken stå något dygn för att sedimenten ska lägga sig på botten igen."
        []
    , Step "Tappa upp på flaskor. Gärna glasflaskor med patentkork." []
    , Step "Låt flaskorna stå i rumstemeratur i tre veckor." []
    ]
