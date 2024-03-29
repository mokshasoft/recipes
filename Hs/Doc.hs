import Data.List
import Data.Ord
import Dosa
import Drink
import GFBread
import GFMeal
import IvanChai
import Markdown
import Mead
import Recipe
import Truffles
import VeganTopping
import YoghurtSalad

recipes :: [Recipe]
recipes =
  sortBy
    (comparing title)
    [ Dosa.recipe
    , Drink.recipe
    , IvanChai.recipe
    , GFBread.recipe
    , GFMeal.recipe
    , Mead.recipe
    , Truffles.recipe
    , VeganTopping.recipe
    , YoghurtSalad.recipe
    ]

main :: IO ()
main = do
  ls <- mapM handle recipes
  writeFile "../README.md" (toReadme ls)
  where
    handle r = do
      writeFile ("../" ++ filename r ++ ".md") (toMarkdown r)
      pure (title r, filename r)
