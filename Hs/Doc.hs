import Drink
import Markdown
import Mead
import Recipe

recipes :: [Recipe]
recipes = [Drink.recipe, Mead.recipe]

main :: IO ()
main = mapM_ (putStrLn . toMarkdown) recipes
