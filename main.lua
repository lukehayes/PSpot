local PSpot = require 'pspot.PSpot'

ui = PSpot:new(800,600)

function love.load()
end

function love.update(dt)
    ui:update(dt)
end

function love.draw()
    ui:draw()
end


