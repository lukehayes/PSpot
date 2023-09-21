--- Main class in PSpot library.
--
-- @module PSpot
--

local Class = require 'pspot.Class'

--- Pspot
-- @table PSpot.
-- @field elements All of the UIElements.
local PSpot = {
    elements = {}
}

--- Update
--
-- @param dt Delta time.
function PSpot:update(dt)
    -- TODO Implement event system here.
end

--- Draw all of the UI Elements
function PSpot:draw()
    for i=1,#self.elements,1 do
        local e = self.elements[i]

        if(e.name == 'Label') then
            love.graphics.print(e.text, e.x, e.y)
        end

        if(e.name == 'Button') then
            love.graphics.rectangle(e.style, e.x, e.y,e.w,e.h)
            love.graphics.setColor(1,0,0,1)
            love.graphics.print(e.text, e.x + e.w/2, e.y + e.h/2)
            love.graphics.setColor(1,1,1,1)
        end
    end
end



return PSpot
