module Main where

import Inicio
import Llaves
import WindowRules
import Espacios
import Estructura

import XMonad.Layout.ShowWName
import XMonad.Hooks.RefocusLast
import Control.Monad (forM_, join)
import Data.List (elemIndex, intercalate, sortBy, sortOn)
import qualified Data.Map as M
import Data.Maybe (fromMaybe)
import Data.Ratio ((%))
import Graphics.X11.Xlib.Extras
  ( ClassHint (resClass),
    WindowAttributes (wa_border_width),
    getClassHint,
    getWindowAttributes,
  )
import System.Environment (lookupEnv)
import System.IO
import XMonad
import XMonad.Actions.CycleWS (nextWS, prevWS)
import XMonad.Actions.WithAll (killAll)
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.EwmhDesktops
import XMonad.Hooks.ManageDocks (AvoidStruts, avoidStruts, docks, manageDocks)
import XMonad.Hooks.ManageHelpers ()
import XMonad.Hooks.SetWMName (setWMName)
import XMonad.Layout.LayoutModifier (ModifiedLayout ())
import XMonad.Layout.MouseResizableTile
  ( MRTMessage (ExpandSlave, ShrinkSlave),
    MouseResizableTile,
    mouseResizableTile,
  )
import XMonad.Layout.NoBorders
  ( Ambiguity (Never),
    ConfigurableBorder,
    SetsAmbiguous (..),
    WithBorder,
    lessBorders,
    noBorders,
  )
import XMonad.Layout.Spacing (Border (Border), Spacing, decWindowSpacing, incWindowSpacing, spacingRaw, toggleWindowSpacingEnabled)
import qualified XMonad.StackSet as W
import XMonad.Util.EZConfig (additionalKeysP)
import XMonad.Util.NamedScratchpad
  ( NamedScratchpad (NS),
    defaultFloating,
    namedScratchpadAction,
  )
import XMonad.Util.NamedWindows (getName)
import XMonad.Util.Run

main :: IO ()
main = do
  mode <- fromMaybe "xmonad" <$> lookupEnv "XMONAD_MODE"
  forM_ [".xmonad-workspace-log", ".xmonad-title-log"] $ \file -> safeSpawn "mkfifo" ["/tmp/" ++ file]
  let workspaceNameFile = "/tmp/" <> mode
  safeSpawn "mkfifo" [workspaceNameFile]
  xmonad $
    ewmh $
      defaultConfig
        { terminal = "kitty",
          modMask = mod4Mask,
          manageHook = myManageHook <+> manageDocks,
          workspaces = myWorkspaces,
          normalBorderColor = "#3E3D32",
          focusedBorderColor = "#bdbdbd",
          handleEventHook = def handleEventHook,
          -- space top and bottom 10 pixels for the bar
        layoutHook  = showWName' myShowWNameTheme $ myLayoutHook,
          startupHook = myStartupHook mode,
          logHook =  ewmhDesktopsLogHook <+> refocusLastLogHook,
          borderWidth = 2
        }
        `additionalKeysP` myKeys

