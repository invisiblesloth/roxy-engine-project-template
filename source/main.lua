-- source/main.lua

local pd <const> = playdate

-- (1) Import the Roxy game engine
import "libraries/roxy/roxy"

-- (2) (Optional) Set frame rate
pd.display.setRefreshRate(30)

-- (3) Initialize Roxy Engine
local config = {
  logLevel = "warn",
  debugging = {
    showFPS = false
  }
}
roxy.init(config)

-- (4) Register scenes
import "scenes/ExampleScene"
roxy.Scene.registerScenes({
  ExampleScene = ExampleScene
})

-- (5) Launch your game
roxy.start(ExampleScene)
