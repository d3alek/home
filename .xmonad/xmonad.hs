import XMonad
import XMonad.Config.Desktop
import XMonad.Layout.Spacing
import XMonad.Layout.NoBorders
import XMonad.Layout.Grid
import XMonad.Hooks.DynamicLog
import XMonad.Util.EZConfig
import Data.List

main = xmonad =<< statusBar myBar myPP toggleStrutsKey (desktopConfig
	{ modMask = mod4Mask
	, terminal = "xterm"
	, layoutHook = myLayout 
    	, manageHook = myManageHook <+> manageHook defaultConfig 
 	}
        `additionalKeysP`
        [ ("<XF86MonBrightnessUp>", spawn "light -A 10")
        , ("<XF86MonBrightnessDown>", spawn "light -U 10")
        , ("<XF86AudioRaiseVolume>", spawn "amixer set Master 5%+")
        , ("<XF86AudioLowerVolume>", spawn "amixer set Master 5%-")
        , ("<XF86AudioMute>", spawn "amixer set Master toggle")
        ]
        `additionalKeys`
        [ ((0, 0x1008FFB2), spawn "amixer set Capture toggle") --http://unix.stackexchange.com/a/211982
        ])

-- Command to launch the bar.
myBar = "xmobar"

-- Custom PP, configure it as you like. It determines what is being written to the bar.
myPP = xmobarPP { ppCurrent = xmobarColor "yellow" "" . wrap "[" "]"
                , ppTitle   = xmobarColor "green"  "" . shorten 100
                }

-- Key binding to toggle the gap for the bar.
toggleStrutsKey XConfig {XMonad.modMask = modMask} = (modMask, xK_b)

-- Spacing around the windows, default Full with no borders
myLayout = spacing 2 $ noBorders Full ||| Tall 1 (3/100) (1/2) ||| Grid

myManageHook = fmap ( "aye-analyze" `isInfixOf`) className --> doShift "5"
