local ui = require 'pspot.PSpot'
local Label = require 'pspot.element.Label'
local Button = require 'pspot.element.Button'

local l = Label:new("Label", 100,400)
local b = Button:new("Button", 100,400)

function love.load()
end

function love.update(dt)
    ui:update(dt)
end

function love.draw()
    ui:draw()
end


