module ToElem where 

import Haste.DOM
import Control.Monad.IO.Class

class ToElem a where
  toElem :: (MonadIO m, Functor m) => a -> m Elem
  
