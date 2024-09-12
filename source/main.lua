-- Initialize the Roxy game engine
import "libraries/roxy/Roxy"
local roxy = Roxy()

-- Register scenes
import "scenes/PrimaryMenu"
import "scenes/SecondaryMenu"
local scenes = {
	PrimaryMenu = PrimaryMenu,
	SecondaryMenu = SecondaryMenu
}
roxy:registerScenes(scenes)

playdate.display.setRefreshRate(30)

-- Launch the game
local config = {
	defaultTransition = "CrossDissolve",
	defaultTransitionDuration = 1.5,
	defaultTransitionHoldTime = 0.25,
	showFPS = true
}
roxy:new(PrimaryMenu, "Cut", nil, nil, nil, config)
