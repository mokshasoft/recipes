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

creatorsToStr :: [String] -> String
creatorsToStr xs = concat $ map (\x -> "- " ++ x ++ "\n") xs

h :: Int -> String -> String
h n title = replicate n '#' ++ " " ++ title ++ "\n"

toMarkdown :: Recipe -> String
toMarkdown recipe =
  h 1 (title recipe) ++
  intro recipe ++
  "\n\n" ++
  h 2 "Storlek" ++
  sizeToStr (size recipe) ++
  "\n\n" ++
  h 2 "Ingredienser" ++
  stepsToIngredients (steps recipe) ++
  "\n" ++
  h 2 "Steg" ++
  stepsToStr (steps recipe) ++
  h 2 "Anteckningar" ++
  stepsToStr (notes recipe)
