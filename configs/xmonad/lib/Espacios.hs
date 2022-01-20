module Espacios where
import qualified Data.Map as M
-- nameWorkSpaces :: [String]
-- nameWorkSpaces = [ "LocalHost", "Cloud", "Search", "Notes", "System", "Code", "Documentation", "Files", "Git", "Animation" ]
-- nameWorkSpaces = [ ": LocalHost", ": Cloud", ": Search", ": Notes", ": System", ": Code", ": Documentation", ": Files", ": Git", ": Animation" ]

-- list index of workSpaces by comprension
myWorkspaces :: [String]
-- indexWorkSpaces = map show [0..(length nameWorkSpaces - 1)]
myWorkspaces = map show [0..24]

-- Concatena elemento a elemento de indexWorkSpaces y nameWorkSpaces
-- para formar una lista de cadenas
-- myWorkspaces = zipWith (++) indexWorkSpaces nameWorkSpaces
-- myWorkspaces = zipWith (++) indexWorkSpaces nameWorkSpaces
