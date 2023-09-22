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

    self.text = text
    self.w = w or 200
    self.h = h or 130
    self.style = 'line'
    self.name = 'Button'

    setmetatable(self, {__index = UIElement:new(x,y)})

    -- Add this UI element to PSpot.elements to be drawn.
    table.insert(PSpot.elements, self)

    return self
end

return Button
