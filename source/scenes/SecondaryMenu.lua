-- scenes/SecondaryMenu.lua

local sceneManager <const> = SceneManager.getInstance()
local transitionManager <const> = TransitionManager.getInstance()

local pd <const> = playdate
local Graphics <const> = pd.graphics
local Text <const> = roxy.text

local displayWidth, displayHeight, displayCenterX, displayCenterY = roxy.graphics.getDisplaySize()

class("SecondaryMenu").extends(RoxyScene)
local scene = SecondaryMenu

-- Default properties
local defaultProperties = {
	backgroundImage = sceneManager:getImage("background2") or Graphics.image.new("assets/images/background2"),
	color1 = Graphics.kColorBlack,
	color2 = Graphics.kColorWhite
}

-- ! 0. Initialize Scene
function scene:init(background, properties)
	properties = properties or {}
	
	-- Merge with default properties
	local mergedProperties = roxy.table.mergeImmutable(defaultProperties, properties)
	
	self.color1 = mergedProperties.color1
	self.color2 = mergedProperties.color2
	
	scene.super.init(self, mergedProperties.backgroundImage)
	
	self:initializeMenu()
	
	-- Set up input handler
	self.inputHandler = {
		AButtonPressed = function()
			self.menu:click()
		end,
		upButtonPressed = function()
			self.menu:selectPrevious()
		end,
		downButtonPressed = function()
			self.menu:selectNext()
		end
	}
end

-- ! Initialize Menu
function scene:initializeMenu()
	self.menu = RoxyMenu({
		wrapSelection = true,
		color = self.color2,
		textAlignment = Text.ALIGN_RIGHT,
		verticalGapBetweenItems = 2,
		padding = { horizontal = 6, vertical = 4 },
		contentInset = { horizontal = 4, vertical = 4 },
		dimensions = { x = 32, y = 16, width = displayWidth - 64, height = 208 },
		cornerRadius = 0
	})
		-- Populate menu
		:addItem("PrimaryMenuCut", function() transitionManager:transitionToScene(PrimaryMenu, "Cut") end, "Cut", 1)
		:addItem("PrimaryMenuCrosDissolve", function() transitionManager:transitionToScene(PrimaryMenu, "CrossDissolve") end, "Cross Dissolve", 2)
		:addItem("PrimaryMenuFadeToBlack", function() transitionManager:transitionToScene(PrimaryMenu, "FadeToBlack") end, "Fade to Black", 3)
		:addItem("PrimaryMenuFadeToWhite", function() transitionManager:transitionToScene(PrimaryMenu, "FadeToWhite") end, "Fade to White", 4)
		:addItem("PrimaryMenuImagetable", function() transitionManager:transitionToScene(PrimaryMenu, "Imagetable") end, "Image Table (Custom)", 5)
end

-- ! Enter Scene
function scene:enter()
	scene.super.enter(self)
	self.menu:activate()  -- Activate menu
end

-- ! Start Scene
function scene:start()
	scene.super.start(self)
end

-- ! Exit Scene
function scene:exit()
	scene.super.exit(self)
end

-- ! Clean Up Scene
function scene:cleanup()
	scene.super.cleanup(self)
	self.menu = nil  -- Remove menu
	sceneManager:recycleImage("background1", self.backgroundImage)
end

-- ! Draw Background
function scene:drawBackground()
	scene.super.drawBackground(self)
end

-- ! Update Scene
function scene:update()
	scene.super.update(self)
	
	-- Draw menu
	if self.menu then
		self.menu:draw()
	end
end
