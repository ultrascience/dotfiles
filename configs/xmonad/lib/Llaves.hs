module Llaves where

import qualified Data.Map as M
import Espacios
import Estructura

import XMonad
import XMonad.Actions.CycleWS (nextWS, prevWS, toggleWS)
import XMonad.Actions.WithAll (killAll)
import XMonad.Operations (kill)
import qualified XMonad.StackSet as W
import XMonad.Layout.ToggleLayouts
import XMonad.Hooks.RefocusLast (toggleFocus)
import qualified XMonad.Layout.MultiToggle as MT (Toggle(..))
import XMonad.Hooks.ManageDocks (avoidStruts, docksEventHook, manageDocks, ToggleStruts(..))
import XMonad.Layout.MultiToggle.Instances (StdTransformers(NBFULL, MIRROR, NOBORDERS))

import System.Exit (exitSuccess, exitWith, ExitCode(ExitSuccess))
myLauncher :: String
myLauncher = "rofi -lines 12 -padding 18 -width 60 -location 0 -show drun -font 'JetBrainsMono Nerd Font Mono 10' -icon-theme 'Papirus' -show-icons"

alphabetKeyBindings :: [(String, String)]
alphabetKeyBindings =
  [ ("a", "anki"),
    ("b", "blender"),
    ("c", "brave --new-window https://google.com"),
    ("d", "discord"),
    ("f", "firefox"),
    ("g", "gimp"),
    ("i", "inkscape"),
    ("n", "neovide"),
    ("m", "xterm -e cmus"),
    ("ñ", "urxvtc"),
    ("r", "kitty -e ranger"),
    ("v", "vncviewer"),
    ("y", "/usr/lib/brave-browser/brave --profile-directory=Default --app-id=agimnkijcaahngcdmfeangaknmldooml"),
    ("z", "rofi-zeal")
  ]

functionKeyBindings :: [(String, String)]
functionKeyBindings =
  [ ("<F2>", myLauncher)
  ]

specialKeyBindings :: [(String, String)]
specialKeyBindings =
  [ ("<Return>", "kitty")
   ]

systemKeyBindings :: [(String, X ())]
systemKeyBindings =
  [ ("M-x", kill),
    ("M-<Escape>", killAll),
    ("M-<Space>", sendMessage (MT.Toggle NBFULL) >> sendMessage ToggleStruts) ,
    ("M-f", sendMessage ToggleLayout),
    -- super + backspace quit XMonad
    ("M-<Backspace>", io (exitWith ExitSuccess)),
    -- super + shift r: reload XMonad
    ("M-S-r", spawn "xmonad --recompile; xmonad --restart")
  ]

windowKeyBindings :: [(String, X ())]
windowKeyBindings =
  [ 
    ("M-<Left>", prevWS),
    ("M-<Right>", nextWS),
    ("M-<Tab>", toggleWS),
    ("C-<Space>", sendMessage NextLayout),
    -- super + bar = cycle window
    -- refocus last -
    ("M-|" , toggleFocus),
    ("M-S-<Space>", sendMessage ToggleLayout),

    ("M-<Up>", sendMessage Shrink),
    ("M-<Down>", sendMessage Expand),
    ("M-S-p", spawn "dm-logout"),
    ("M-S-w", spawn "dm-websearch"),
    ("M-S-k", spawn "dm-kill"),
    ("M-S-m", spawn "dm-man"),
    ("M-S-b", spawn "dm-bookman"),
    ("M-S-c", spawn "dm-colpick"),
    ("M-S-y", spawn "dm-youtube"),
    ("M-S-e", spawn "dm-confedit"),
    -- Print = screenshot
    ("<Print>", spawn "dm-maim"),
    ("M-<End>", spawn "cmus-remote --pause"),
    ("M-<Home>", spawn "cmus-remote --play"),
    ("M-<Insert>", spawn "cmus-remote -R"),
    ("M-<Next>", spawn "cmus-remote --next"),
    ("M-<Prior>", spawn "cmus-remote --prev"),
    -- go to nth workspace
    ("M-0", windows $ W.greedyView "0"),
    ("M-1", windows $ W.greedyView "1"),
    ("M-2", windows $ W.greedyView "2"),
    ("M-3", windows $ W.greedyView "3"),
    ("M-4", windows $ W.greedyView "4"),
    ("M-5", windows $ W.greedyView "5"),
    ("M-6", windows $ W.greedyView "6"),
    ("M-7", windows $ W.greedyView "7"),
    ("M-8", windows $ W.greedyView "8"),
    ("M-9", windows $ W.greedyView "9"),
    ("M-S-0", windows $ W.shift "0"),
    ("M-S-1", windows $ W.shift "1"),
    ("M-S-2", windows $ W.shift "2"),
    ("M-S-3", windows $ W.shift "3"),
    ("M-S-4", windows $ W.shift "4"),
    ("M-S-5", windows $ W.shift "5"),
    ("M-S-6", windows $ W.shift "6"),
    ("M-S-7", windows $ W.shift "7"),
    ("M-S-8", windows $ W.shift "8"),
    ("M-S-9", windows $ W.shift "9"),

    -- super + keypad 0
    ("M-<KP_Add>", spawn "pactl set-sink-volume 0 +5%"),
    ("M-<KP_Subtract>", spawn "pactl set-sink-volume 0 -5%"),
    ("M-<KP_Insert>", windows $ W.greedyView "10"),
    ("M-<KP_End>", windows $ W.greedyView "11"),
    ("M-<KP_Down>", windows $ W.greedyView "12"),
    ("M-<KP_Next>", windows $ W.greedyView "13"),
    ("M-<KP_Left>", windows $ W.greedyView "14"),
    ("M-<KP_Begin>", windows $ W.greedyView "15"),
    ("M-<KP_Right>", windows $ W.greedyView "16"),
    ("M-<KP_Home>", windows $ W.greedyView "17"),
    ("M-<KP_Up>", windows $ W.greedyView "18"),
    ("M-<KP_Prior>", windows $ W.greedyView "19"),
    ("M-<KP_Divide>", windows $ W.greedyView "20"),
    ("M-,", windows $ W.greedyView "21"),
    ("M-.", windows $ W.greedyView "22"),
    ("M--", windows $ W.greedyView "23"),
    ("C-g g", spawnSelected' myAppGrid),
    ("C-g r", spawnSelected' reposGrid),
    ("M-C-<Space>", spawn "kitty -e ranger ~/Github/current/"),
    ("M-C-x", spawn "kitty -e ranger ~/.xmonad/"),
    ("M-C-c",spawn "kitty -e -e ranger /home/aldo/Codes/"),
    ("M-C-d", spawn "kitty -e -e ranger /home/aldo/Downloads"),
    ( "M-C-g", spawn "kitty -e -e ranger /home/aldo/Github/"),
    ( "M-C-i", spawn "kitty -e -e ranger /home/aldo/.config/i3"),
    ( "M-C-m", spawn "kitty -e -e ranger /home/aldo/Música/"),
    ( "M-C-n", spawn "kitty -e -e ranger /home/aldo/.config/nvim/"),
    ( "M-C-p", spawn "kitty -e -e ranger /home/aldo/Pictures/"),
    ( "M-C-s", spawn "kitty -e -e ranger /home/aldo/Screenshots/"),
    ( "M-C-<Return>", spawn "kitty -e ranger /home/aldo/Documentos/Cheatsheets/")
    -- ("M-<less>", windows W.swapDown)
    --
     ]

myKeybindings = alphabetKeyBindings ++ functionKeyBindings ++ specialKeyBindings

myKeys :: [(String, X ())]
myKeys = map (\(a, b) -> ("M-" ++ a, spawn b)) myKeybindings ++ systemKeyBindings ++ windowKeyBindings
