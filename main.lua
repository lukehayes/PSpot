local pspot = require 'pspot.PSpot'
local Label = require 'pspot.element.Label'
local Button = require 'pspot.element.Button'
pspot:addElement(l1)
pspot:addElement(l2)
pspot:addElement(b)

local l = Label:new("Label", 100,400)
local b = Button:new("Button", 100,400)

function love.load()
end

function love.update(dt)
    pspot:update(dt)
end

function love.draw()
    pspot:draw()
end


