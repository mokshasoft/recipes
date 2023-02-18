module Drink
  ( recipe
  ) where

import Recipe

recipe :: Recipe
recipe =
  Recipe
    "Dryck"
    "Syrad dryck"
    "Mjölksyrad frukt- och bärdryck."
    (Item "" 30 Liter)
    [ Step "Ta fram en jäshink på 30 liter." []
    , Step "Skär äpplen i bitar och lägg i hinken." [Item "äpplen" 1.5 Kilo]
    , Step
        "Skiva apelsin med skalet och lägg i hinken. Apelsinen är till för att ta bort en bismak som kan bli när man fermenterar frukt."
        [Item "apelsin" 1.5 Piece]
    , Step "Häll blåbären i hinken." [Item "blåbär" 0.75 Kilo]
    , Step
        "Häll den gamla drycken i hinken. För att skapa kulturen första gången så kan man ta några skedar med opastöriserad surkål och lägga i hinken."
        [Item "dryck" 0.5 Liter]
    , Step
        "Blanda ut honung i en burk med lock tillsammans med vatten och skaka så att honungen löser sig. Häll i hinken."
        [Item "honung" 375 Gram]
    , Step "Häll i fänkålen i hinken." [Item "fänkålsfrö" 17 Gram]
    , Step
        "Fyll hinken med kallt vatten så att totalvolymen blir 30 liter. Sätt på ett tätslutande lock på hinken. Locket kan ha ett vattenlås men behöver det inte."
        []
    , Step
        "Ställ hinken i rumstemperatur och låt jäsa i tre veckor. I början kommer drycken expandera något så var försiktig om lite av drycken skulle rinna ut. Är det kallare än 20 grader så tar jäsningen längre tid, låt då drycken jäsa längre tills den har jäst ut helt."
        []
    , Step
        "Tillsätt honung utblandad med vatten i hinken, och rör om. Honungen är till för att andra fermenteringen i flaskan ska ge viss kolsyra."
        [Item "honung" 150 Gram]
    , Step
        "Låt hinken stå något dygn för att sedimenten ska lägga sig på botten igen."
        []
    , Step "Tappa upp på flaskor. Gärna glasflaskor med patentkork." []
    , Step
        "Låt flaskorna stå i rumstemeratur i tre veckor. Ju längre flaskorna står desto mer tydlig blir kolsyran."
        []
    ]
    [ Step "Äpplen går att byta mot tex rabarber som ger en annan smak." []
    , Step
        "Olika kryddningsalternativ. Krydda drycken med tex chili, ingefära, färsk gurkmeja, nejlikor, eller något annat gott."
        []
    , Step
        "Jul-varianten, men även god annars. Tillsätt följande till receptet:"
        [Item "hel kryddnejlika" 2 Tablespoon, Item "ingefära" 1 Teaspoon]
    , Step
        "Under utveckling; Te. Sjud teet i cirka 30 minuter, låt svalna och tillsätt teet med bladen i jäshinken. För att få en fin tefärg på drycken så använd inga bär med starka färger, så som blåbär."
        [Item "svart te" 1.5 Deciliter]
    , Step
        "Under utveckling; Hallon. Ta bort blåbär och tillsätt följande:"
        [Item "hallon" 450 Gram, Item "färsk ingefära" 100 Gram]
    , Step
        "Under utveckling; Passionsfrukt. Ta bort blåbär och tillsätt följande:"
        [Item "passionsfrukt" 500 Gram, Item "färsk ingefära" 200 Gram]
    ]
    ["Kjell Claeson", "Jonas Claeson"]
