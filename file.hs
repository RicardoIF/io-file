import System.IO

main :: IO ()
main = do
	firstfile <- openFile "primero.txt" WriteMode
	word <- getLine
	hPutStrLn firstfile word
	hClose firstfile
	firstfile <- openFile "primero.txt" ReadMode
	line <- hGetLine firstfile
	putStrLn line
	putStrLn "Done!"