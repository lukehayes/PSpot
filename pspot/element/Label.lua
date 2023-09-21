--- Label UI Element
--
-- @classmod Label
--

local UIElement = require 'pspot.element.UIElement'
local PSpot     = require 'pspot.PSpot'
local Class     = require 'pspot.Class'

local Label = {}

--- A simple text label.
--
-- @function Label:new
--
-- @param text The text of the label.
-- @param x The x position.
-- @param y The y position.
function Label:new(text,x,y)

    self.text = text
    self.name = "Label"

    Class:extends(self, UIElement(x,y))

    -- Add this UI element to PSpot.elements to be drawn.
    table.insert(PSpot.elements, self)

    return self
end

return Label
