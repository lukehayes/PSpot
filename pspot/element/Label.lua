local UIElement = require('pspot.element.UIElement')
local PSpot = require 'pspot.PSpot'

local label = {}

--[[============================================================================
-- Label
==============================================================================]]

--- A simple text label.
--
-- @function Label
--
-- @param text The text of the label.
-- @param x The x position.
-- @param y The y position.
function Label(text,x,y)

    label.text = text
    label.name = "Label"

    class:extends(label, UIElement(x,y))

    -- Add this UI element to PSpot.elements to be drawn.
    table.insert(PSpot.elements, o)

    return o
end

return label
