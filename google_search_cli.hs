import System.Process (callCommand)
import Network.URI (escapeURIString, isUnreserved)

main :: IO ()
main = do
    putStrLn "Enter your search query: "
    query <- getLine

    let url = "https://www.google.com/search?q=" ++ escapeURIString isUnreserved query
    let command = case os of
                    "linux"   -> "xdg-open \"" ++ url ++ "\""
                    "windows" -> "start \"" ++ url ++ "\""
                    "darwin"  -> "open \"" ++ url ++ "\""
                    _         -> error "Unsupported OS"

    callCommand command
    putStrLn $ "Searching for: " ++ query

os :: String
os = case System.Info.os of
        "linux"   -> "linux"
        "mingw32" -> "windows"
        "darwin"  -> "darwin"
        _         -> error "Unsupported OS"

