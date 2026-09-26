module Markdown
  ( toMarkdown
  , toReadme
  ) where

import Recipe

sizeToStr :: Item -> String
sizeToStr item =
  (if (amount item == 0)
     then ""
     else show (amount item) ++ " " ++ show (unit item) ++ " ") ++
  (name item)

stepIngredientsToStr :: [Item] -> String
stepIngredientsToStr [] = ""
stepIngredientsToStr (x:xs) =
  "    - " ++ sizeToStr x ++ "\n" ++ stepIngredientsToStr xs

stepsToStr' :: Int -> [Step] -> String
stepsToStr' _ [] = ""
stepsToStr' step (x:xs) =
  show step ++
  ". " ++ (description x) ++ "\n" ++ ingredients ++ stepsToStr' (step + 1) xs
  where
    ingredients = stepIngredientsToStr $ items x

stepsToStr :: [Step] -> String
stepsToStr = stepsToStr' 1

itemsToStr :: [Item] -> String
itemsToStr [] = ""
itemsToStr (x:xs) = "- " ++ sizeToStr x ++ "\n" ++ itemsToStr xs

-- Items with the same name and unit are merged by summing their amounts
mergeItems :: [Item] -> [Item]
mergeItems = foldl add []
  where
    same a b = name a == name b && unit a == unit b
    add acc i
      | any (same i) acc =
        map
          (\x ->
             if same i x
               then x {amount = amount x + amount i}
               else x)
          acc
      | otherwise = acc ++ [i]

stepsToItems :: [Step] -> [Item]
stepsToItems steps = mergeItems $ concatMap items steps

stepsToIngredients :: [Step] -> String
stepsToIngredients = itemsToStr . stepsToItems

creatorsToStr :: [String] -> String
creatorsToStr xs = concat $ map (\x -> "- " ++ x ++ "\n") xs

h :: Int -> String -> String
h n title = replicate n '#' ++ " " ++ title ++ "\n"

body :: String -> String
body [] = ""
body str = str ++ "\n\n"

section :: String -> String -> String
section title body =
  if null body
    then ""
    else title ++ body

toMarkdown :: Recipe -> String
toMarkdown recipe =
  h 1 (title recipe) ++
  body (intro recipe) ++
  section (h 2 "Storlek") (body (sizeToStr (size recipe))) ++
  section (h 2 "Ingredienser") (body (stepsToIngredients (steps recipe))) ++
  section (h 2 "Steg") (body (stepsToStr (steps recipe))) ++
  section (h 2 "Anteckningar") (body (stepsToStr (notes recipe)))

toReadme :: [(String, String)] -> String
toReadme ls =
  h 1 "Recipes" ++
  "A collection of recipes\n" ++
  (concat $ map (\(t, f) -> "  - [" ++ t ++ "](" ++ f ++ ".md)\n") ls) ++
  "\n" ++
  section
    (h 2 "Licence")
    "[CC BY-SA](https://creativecommons.org/licenses/by-sa/4.0/)"
