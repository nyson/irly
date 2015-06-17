module Main where 

import Haste
import Network.URI
import Haste.DOM

import ToElem

type Tag = String 

data Image = Img {src :: String,
                  alt :: String,
                  tags :: [Tag]}
           deriving Show

instance ToElem Image where
  toElem i = do
    img <- newElem "img"
    c <- newElem "div"
    info <- newElem "span"
    
    setProp img "src" (src i)
    setProp img "alt" (alt i)

    setProp info "innerText" (show $ tags i)
    
    mapM_ (\child -> addChild child c) [img, info]
    return c


main = alert "tjosan"
