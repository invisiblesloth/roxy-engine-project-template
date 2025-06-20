-- source/main.lua

local pd <const> = playdate

-- (1) Initialize the Roxy game engine
import "libraries/roxy/roxy"

-- (2) Set Frame Rate
pd.display.setRefreshRate(30)

-- (3) Register Scenes
import "scenes/ExampleScene"
roxy.Scene.registerScenes({ExampleScene = ExampleScene})

-- (4) Launch the Game
roxy.new(ExampleScene)
