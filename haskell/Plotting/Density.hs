module Plotting.Density where

import Graphics.Rendering.Chart       

-- | Simple density is a histogram where the weights of all the samples are 1
simpleDensity :: Num a => [a] -> p
simpleDensity = undefined

-- | takes weight,value pairs and produces a histogram
density :: Num a => [(LogFloat, a)] -> p
density = undefined        
