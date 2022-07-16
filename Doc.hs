import Drink
import Mead
import Recipe

recipes :: [Recipe]
recipes = [Drink.recipe, Mead.recipe]

toMarkdown :: Recipe -> IO ()
toMarkdown = print

main :: IO ()
main = mapM_ toMarkdown recipes
