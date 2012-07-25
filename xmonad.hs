import XMonad
import XMonad.Util.EZConfig(additionalKeys)
import XMonad.Hooks.EwmhDesktops

altMask = mod1Mask

main = do
  xmonad $ defaultConfig
    { terminal    = "urxvt"
    , borderWidth = 0
    , handleEventHook    = fullscreenEventHook
    } `additionalKeys`
    [ ((altMask .|. controlMask, xK_l),  spawn "~/cogs/turtlemode") -- Lock screen
    , ((0, 0x1008FF12), spawn "amixer -q set Master toggle")-- Mute
    , ((0, 0x1008FF11), spawn "amixer -q set Master 9%-") -- Decrease volume.
    , ((0, 0x1008FF13), spawn "amixer -q set Master 3%+") -- Increase volume.
    , ((0, 0x1008FF16), spawn "nyxmms2 prev") -- Audio previous.
    , ((0, 0x1008FF14), spawn "nyxmms2 toggle") -- Play/pause
    , ((0, 0x1008FF17), spawn "nyxmms2 next") -- Audio next
    , ((0, xK_Print),   spawn "cd Dropbox/t/andres/vt/ && scrot")
    ]
