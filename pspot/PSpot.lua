--- PSpot
-- @classmod PSpot
local class = require('libs.middleclass')

local PSpot = class('PSpot')

--- Constructor
-- @param width The width of the game window
-- @param height The height of the game window
function PSpot:initialize(width, height)
    self.width = width
    self.height = height
    self.elements = {}
end

--- The main update() method
-- @param dt Delta time
function PSpot:update(dt)
    -- TODO Implmement
end

--- The main draw() method
-- @return nil
function PSpot:draw()
    -- TODO Implmement
end


return PSpot
