module Inicio where

import XMonad
import XMonad.Hooks.SetWMName (setWMName)

setWallpaper :: X ()
setWallpaper = spawn "feh -z --bg-fill ~/wallpapers/a.jpg"

compositorCommand :: String
compositorCommand = "picom --experimental-backends"

startCompositor :: Bool -> X ()
startCompositor force =
  spawn $ if force then "pkill picom; " <> compositorCommand else "pgrep picom || " <> compositorCommand

myStartupHook :: String -> X ()
myStartupHook mode = do
  setWMName "XMonad"
  setWallpaper
  startCompositor False
  mapM_
    spawn
    [ "~/.config/polybar/launch.sh"
    , "xrdb ~/.Xresources"
    ,"urxvtd -q &"
    ]

