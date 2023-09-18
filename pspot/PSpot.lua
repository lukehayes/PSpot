--- PSpot
-- @module PSpot
local class = require('libs.middleclass')

local PSpot = class('PSpot')

--- Constructor
-- @param number The width of the game window
-- @param number The height of the game window
function PSpot:initialize(width, height)
    self.width = width
    self.height = height
    self.elements = {}
end

function PSpot:update(dt)
    -- TODO Implmement
end

function PSpot:draw()
    -- TODO Implmement
end


return PSpot
