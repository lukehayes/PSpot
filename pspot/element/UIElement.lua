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

    local obj = {}

    obj.text = text
    obj.name = "UIElement"
    obj.fg_color = {r=1,g=1,b=1,a=1}
    obj.bg_color = {r=0.5,g=0.5,b=0.5,a=1}
    obj.x = x
    obj.y = y

    setmetatable(obj, {
        __index = obj,
        __tostring = function() return "UIElement" end
    })

    -- Add this UI element to PSpot.elements to be drawn.
    table.insert(PSpot.elements, obj)

    return obj
end

return UIElement
