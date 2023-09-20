local PSpot = require 'pspot.PSpot'
local Label = require 'pspot.element.Label'

ui = PSpot

Button("Button",100,100,100,100)

Label("Test Label", 200,200)


function love.load()
end

function love.update(dt)
    ui:update(dt)
end

function love.draw()
    ui:draw()
end


