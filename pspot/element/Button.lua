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
    obj.fg_color = {r=0,g=1,b=0,a=1}
    obj.bg_color = {r=0,g=1,b=0,a=1}


    setmetatable(obj, {
        __index = self,
        __tostring = "Button Element"
    })

    setmetatable(Button, {__index = UIElement:new(x,y)})

    return obj
end

return Button
