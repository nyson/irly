{-# LANGUAGE OverloadedStrings #-}



import Web.Scotty
import Data.Text as T

main = scotty 3000 $ get "" $ html "hello."
