import Data.List
import Data.Maybe

numberPermutations = 5

sumMap = map (^3) [0..999999]

permutationMap a = map (sort . show) a 

main = do
  let a = permutationMap sumMap
  let c = filter ((==5) . length) . group . sort $ a
  let Just d = elemIndex (head (head c)) a
  putStrLn (show (toInteger d^3))


