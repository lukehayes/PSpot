--- Class
-- @module Class
--
local util = {}

function util:collides(x1,y1,w1,h1,x2,y2,w2,h2)
    -- TODO Implement
    print("Collides")
    print(x1,y1,w1,h1,x2,y2,w2,h2)
    print("------------------")
end

function util:collidesObject(a,b)
    -- TODO Implement
    print("Collides Object")
    print(a.x,a.y,a.w,a.h,b.x,b.y,b.w,b.h)
    print("------------------")
end

return utl
