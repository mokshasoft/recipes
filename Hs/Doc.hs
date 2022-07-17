import Drink
import Markdown
import Mead
import Recipe
import YoghurtSalad

recipes :: [Recipe]
recipes = [Drink.recipe, Mead.recipe, YoghurtSalad.recipe]

main :: IO ()
main =
  mapM_ (\r -> writeFile ("../" ++ filename r ++ ".md") (toMarkdown r)) recipes
