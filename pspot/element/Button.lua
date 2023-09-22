--- Button UI Element
--
-- @classmod Button
--

local UIElement = require 'pspot.element.UIElement'
local PSpot     = require 'pspot.PSpot'
local Class     = require 'pspot.Class'

local Button = {}

--- A simple button.
--
-- @function Button
--
-- @param text The text of the button.
-- @param x The x position.
-- @param y The y position.
-- @param w The width of the button.
-- @param h The height of the button.
function Button:new(text,x,y,w,h)

    local w = w or 150
    local h = h or 100

    local self =  {
        text = text,
        w = w,
        h = h,
        style = 'fill',
        name = "Button"
    }

    setmetatable(self,  UIElement:new(x,y))

    -- Add this UI element to PSpot.elements to be drawn.
    table.insert(PSpot.elements, self)

    return self
end

return Button
