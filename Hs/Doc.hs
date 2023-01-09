import Dosa
import Drink
import IvanChai
import Markdown
import Mead
import Recipe
import Truffles
import VeganTopping
import YoghurtSalad

recipes :: [Recipe]
recipes =
  [ Dosa.recipe
  , Drink.recipe
  , IvanChai.recipe
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
