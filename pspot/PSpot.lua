--- Main class in PSpot library.
--
-- @module PSpot
--

local Class = require 'pspot.Class'

--- Pspot
-- @table PSpot.
-- @field elements All of the UIElements.
local PSpot = {
    font = love.graphics.newFont("assets/Mozart.ttf", 10),
    elements = {}
}


function PSpot:new(w,h)

    local obj   = {}
    obj.width   = w or 800
    obj.height  = h or 600
    obj.widthOffset = obj.width / 2
    obj.heightOffset = obj.height / 2
    obj.mx = 0
    obj.my = 0

    setmetatable(obj, {__index = PSpot})

    return obj
end

--- Add a new UI Element.
--
-- @param elements The new UI Element
function PSpot:addElement(element)
    table.insert(self.elements, element)
end

--- Update
--
-- @param dt Delta time.
function PSpot:update(dt)
    -- TODO Implement event system here.
    print("Mouse ", self.mx,self.my)
end

--- Draw all of the UI Elements
function PSpot:draw()
    for i=1,#self.elements,1 do
        local e = self.elements[i]

        if(e.name == 'Label') then
            love.graphics.print(e.text, e.x, e.y)

        elseif(e.name == 'Button') then

            love.graphics.rectangle(e.style, e.x, e.y,e.width,e.height)

            love.graphics.setColor(
                e.fg_color.r,
                e.fg_color.g,
                e.fg_color.b,
                e.fg_color.a
            )

            love.graphics.print(e.text, e.x + e.width/2, e.y + e.height/2)

            love.graphics.setColor(
                e.bg_color.r,
                e.bg_color.g,
                e.bg_color.b,
                e.bg_color.a
            )
        end
    end
end



return PSpot
