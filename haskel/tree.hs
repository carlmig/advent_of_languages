import System.Environment

printchar :: String -> Int -> String
printchar x n = if n > 0 then x ++ printchar x (n-1) else ""

printline n levels = printchar " " (levels - n) ++ printchar "*" (n+n-1)

printtree 0 levels = ""
printtree n levels = printtree (n-1) levels ++ "\n" ++ printline n levels

printfull levels = printtree levels levels ++ "\n" ++ printchar " " (levels -1) ++ "|" 

main :: IO ()
main = do x <- getArgs; putStrLn (printfull (read $ head x :: Int))


