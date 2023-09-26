local PSpot = require 'pspot.PSpot'
local Label = require 'pspot.element.Label'
local Button = require 'pspot.element.Button'
local util = require 'pspot.util'

local width,height = love.window.getMode()
pspot = PSpot:new(width,height)

local l = Label:new("Label", 10,40)
local b = Button:new("Button", 400,400)

local mx,my,scale= 0,0, 10

pspot:addElement(l)
pspot:addElement(b)

function love.load()
end

function love.update(dt)
    pspot.mx = x
    pspot.my = y
    pspot:update(dt)

    print(pspot.x,pspot.y)

end

function love.draw()
    pspot:draw()
    love.graphics.rectangle("fill", mx,my, scale,scale)
end

function love.mousemoved(x,y,dx,dy)

    mx,my = x,y

    for k,v in pairs(pspot.elements) do
        if(v.name == 'Button') then

            if(util.inside(
                mx,my,scale,scale,
                v.x,v.y,v.width,v.height
                )) then

                v.fg_color.a = 0.6
                v.bg_color.a = 0.6

            else

                v.fg_color.a = 1
                v.bg_color.a = 1
            end
        end
    end
end

