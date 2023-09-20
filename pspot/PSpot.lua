--- Main class in PSpot library
-- @module PSpot

local class = require 'pspot.class'

--- Pspot
-- @table PSpot.
-- @field elements All of the UIElements.
local PSpot = {
    elements = {}
}

--- Update
function PSpot:update(dt)
    -- TODO Implement event system here.
end

function PSpot:draw()
    for i=1,#self.elements,1 do
        local elem = self.elements[i]

        if(elem.name == 'Label') then
            love.graphics.print(elem.text, elem.x, elem.y)
        end
    end
end

--[[============================================================================
-- UIElement
==============================================================================]]

--- Base table for all UIElements in PSpot.
--
-- @function UIElement
--
-- @param x The x position.
-- @param y The y position.
function UIElement(x,y)
    local x = x or 0
    local y = y or 0
    return {
        x = x,
        y = y,
        name = "UIElement"
    }
end

--[[============================================================================
-- Label
==============================================================================]]

--- A simple text label.
--
-- @function Label
--
-- @param text The text of the label.
-- @param x The x position.
-- @param y The y position.
function Label(text,x,y)

    local o =  {
        text = text,
        name = "Label"
    }

    class:extends(o, UIElement(x,y))
    
    -- Add this UI element to PSpot.elements to be drawn.
    table.insert(PSpot.elements, o)

    return o
end

return PSpot
