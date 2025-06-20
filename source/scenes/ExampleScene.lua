-- source/scenes/Scene.lua

local pd        <const> = playdate
local Graphics  <const> = pd.graphics

local drawText  <const> = Graphics.drawText

-- ----------------------------------------
-- Class Definition & Init
-- ----------------------------------------

class("ExampleScene").extends(RoxyScene)
local scene = ExampleScene

-- ----------------------------------------
-- Scene Lifecycle (Core Methods)
-- ----------------------------------------

function scene:update(dt)
  drawText("This is an example scene.", 20, 20)
  print(dt)
end