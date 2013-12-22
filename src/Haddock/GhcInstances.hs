{-# LANGUAGE OverloadedStrings, StandaloneDeriving, FlexibleInstances, UndecidableInstances, IncoherentInstances #-}
{-# OPTIONS_GHC -fno-warn-orphans #-}
module Haddock.GhcInstances () where

import           DynFlags (DynFlags, defaultDynFlags)
import           Haddock.Types
import           Outputable (Outputable, showSDoc, ppr)

dynFlags :: DynFlags
dynFlags = defaultDynFlags (error "dynFlags for Haddock tests/debugging: undefined")

instance Outputable a => Show a where
  show = showSDoc dynFlags . ppr

deriving instance Show a => Show (Doc a)
deriving instance Eq a => Eq (Doc a)
