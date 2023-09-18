--- UIElement
-- @classmod UIElement
local class = require('libs.middleclass')

local UIElement = class('UIElement')

--- Constructor
-- @param x The x position of the element
-- @param y The y position of the element
-- @param w The width of the element
-- @param h The height of the element
function UIElement:initialize(x,y,w,h)
    self.x = x or 0
    self.y = y or 0
    self.w = w or 100
    self.h = h or 100
    self.priority = 10
end

--- The main update() method - Abstract method so all UI elements should implement it.
-- @param dt Delta time
function UIElement:update(dt)
    print("UIElement:update() is abstract -> child class should implmement it!")
end

--- The main draw() method - Abstract method so all UI elements should implement it.
-- @return nil
function UIElement:draw()
    print("UIElement:draw() is abstract -> child class should implmement it!")
end


return UIElement
