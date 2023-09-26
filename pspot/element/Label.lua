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

    local obj = {}

    obj.text = text
    obj.name = "Label"
    obj.x = x
    obj.y = y
    obj.fg_color = {r=1,g=0,b=1,a=1}
    obj.bg_color = {r=1,g=0,b=1,a=1}

    setmetatable(obj, {
        __index = UIElement:new(x,y),
        __tostring = function() return "Label" end
    })

    return obj
end

return Label
