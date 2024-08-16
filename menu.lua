-- menu.lua
local composer = require("composer")
local scene = composer.newScene()

local function onPlayButtonTap()
    print("Play button tapped")
    composer.gotoScene("game", { effect = "fade", time = 500 })
end

function scene:create(event)
    local sceneGroup = self.view

    local playButton = display.newText(sceneGroup, "Play", display.contentCenterX, display.contentCenterY, native.systemFont, 16)
    playButton:setFillColor(0, 0, 0)

    playButton:addEventListener("tap", onPlayButtonTap)
end

scene:addEventListener("create", scene)

return scene
