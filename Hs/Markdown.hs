module Markdown
  ( toMarkdown
  ) where

import Recipe

sizeToStr :: Item -> String
sizeToStr item =
  show (amount item) ++ " " ++ show (unit item) ++ " " ++ (name item)

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

stepsToItems :: [Step] -> [Item]
stepsToItems steps = foldl (\acc i -> acc ++ items i) [] steps

stepsToIngredients :: [Step] -> String
stepsToIngredients = itemsToStr . stepsToItems

toMarkdown :: Recipe -> String
toMarkdown recipe =
  "# " ++
  title recipe ++
  "\n" ++
  intro recipe ++
  "\n\n" ++
  "## Storlek\n" ++
  sizeToStr (size recipe) ++
  "\n\n" ++
  "## Ingredienser\n" ++
  stepsToIngredients (steps recipe) ++
  "\n" ++ "## Steg\n" ++ stepsToStr (steps recipe)
