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

--- A simple button.
--
-- @function Button
--
-- @param text The text of the button.
-- @param x The x position.
-- @param y The y position.
-- @param w The width of the button.
-- @param h The height of the button.
function Button(text,x,y,w,h)

    local w = w or 150
    local h = h or 100

    local o =  {
        text = text,
        w = w,
        h = h,
        style = 'fill',
        name = "Button"
    }

    class:extends(o, UIElement(x,y))
    
    -- Add this UI element to PSpot.elements to be drawn.
    table.insert(PSpot.elements, o)

    return o
end

return PSpot
