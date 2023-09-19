local UIElement = require('pspot.element.UIElement')

--- Label
-- @classmod PSpot
local class = require('libs.middleclass')

local Label = class('Label', UIElement)

--- Constructor
-- @param text Text for the label
-- @param x The x position of the element
-- @param y The y position of the element
-- @param w The width of the element
-- @param h The height of the element
function Label:initialize(text, x,y,w,h)
    self.text = text or "Label text not set"
    self.name = "label"
    UIElement:initialize(x,y,w,h)
end

--- The main update() method
-- @param dt Delta time
function Label:update(dt)
    -- TODO Implmement
end

--- The main draw() method
-- @return nil
function Label:draw()
    -- TODO Implmement
    love.graphics.print(self.text, self.x, self.y)
end

return Label
