module WindowRules where

import Espacios

import XMonad
import Data.Monoid


import XMonad.Hooks.ManageHelpers (isFullscreen, doFullFloat, doCenterFloat)

import Data.Maybe (isNothing, isJust)
import Text.Regex (matchRegex, mkRegex)
import Text.Regex.Posix ((=~))

(~?) :: Functor f => f String -> String -> f Bool
q ~? x = fmap (=~ x) q

myManageHook :: XMonad.Query (Data.Monoid.Endo WindowSet)
myManageHook = composeAll

     [ 
      -- class Brave-browser and title YouTube send to workspace 1
       title ~? "^YouTube" --> doShift "10"
     , className =? "neovide" --> doShift "5"
     , className =? "Brave-browser" --> doShift "2"
     , className =? "XTerm" --> doShift "11"
     , className =? "confirm"         --> doFloat
     , className =? "file_progress"   --> doFloat
     , className =? "dialog"          --> doFloat
     , className =? "download"        --> doFloat
     , className =? "error"           --> doFloat
     , className =? "notification"    --> doFloat
     , className =? "splash"          --> doFloat
     , className =? "toolbar"         --> doFloat
     , className =? "URxvt"  --> doShift "4"
     , isFullscreen -->  doFullFloat
     ]

