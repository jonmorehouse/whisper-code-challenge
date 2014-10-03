import Data.Ord
import Data.List
import Data.Map
import Control.Arrow

{- I got on irc and asked about the last part of this one liner and how to compress it ... but still came up with something :) -}
answer = minimumBy (comparing $ minimum . snd) . toList . Data.Map.filter ((==5) . length) . fromListWith (++) $ fmap ((sort.show.(^3))&&&(:[])) [1..100000]

main = print answer
