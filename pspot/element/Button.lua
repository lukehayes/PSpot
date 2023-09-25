--- Button UI Element
--
-- @classmod Button
--

local UIElement = require 'pspot.element.UIElement'
local PSpot     = require 'pspot.PSpot'
local Class     = require 'pspot.Class'

local Button = {}

function Button:hover()
    -- TODO Implement button hover states.
    print("Button Hovering")
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
function Button:new(text,x,y,w,h)

    local obj  = {}

    obj.text   = text
    obj.width  = w or 200
    obj.height = h or 100
    obj.style  = 'line'
    obj.name   = 'Button'
    obj.active = false


    setmetatable(obj, {
        __index = UIElement:new(x,y),
        __tostring = function() return "Button" end
    })

    return obj
end

return Button
