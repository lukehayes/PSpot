--- UIElement
--
-- @classmod UIElement

local PSpot     = require 'pspot.PSpot'
local Class     = require 'pspot.Class'

local UIElement = {}

--- A simple text label.
--
-- @function UIElement:new
--
-- @param x The x position.
-- @param y The y position.
function UIElement:new(x,y)

    self.text = text
    self.name = "UIElement"
    self.fg_color = {r=1,g=1,b=1,a=1}
    self.bg_color = {r=0.5,g=0.5,b=0.5,a=1}
    self.x = x
    self.y = y

    -- Add this UI element to PSpot.elements to be drawn.
    table.insert(PSpot.elements, self)

    return self
end

return UIElement
