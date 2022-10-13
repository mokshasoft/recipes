import Dosa
import Drink
import Markdown
import Mead
import Recipe
import Truffles
import VeganTopping
import YoghurtSalad

recipes :: [Recipe]
recipes =
  [Dosa.recipe, Drink.recipe, Mead.recipe, Truffles.recipe, VeganTopping.recipe, YoghurtSalad.recipe]

main :: IO ()
main =
  mapM_ (\r -> writeFile ("../" ++ filename r ++ ".md") (toMarkdown r)) recipes
